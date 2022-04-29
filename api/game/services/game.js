'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-services)
 * to customize this service
 */

const axios = require("axios");
const slugify = require("slugify");
const qs = require("querystring");

function Exception(e) {
  return { e, data: e.data && e.data.errors && e.data.errors };
}

async function getByName(name, entityName) {
  const item = await strapi.services[entityName].find({ name });
  return item.length ? item[0] : null;
}

async function create(name, entityName) {
  const item = await getByName(name, entityName);

  if (!item) {
    return await strapi.services[entityName].create({
      name,
      slug: slugify(name, { lower: true }),
    });
  }
}

async function createManyToManyData(products = []) {
  const developers = {};
  const publishers = {};
  const categories = {};
  const platforms = {};

  products.forEach(product => {
    const { developer, publisher, genres, supportedOperatingSystems } = product;

    genres && genres.forEach(genre => {
      categories[genre] = true;
    })

    supportedOperatingSystems && supportedOperatingSystems.forEach(so => {
      platforms[so] = true;
    })

    developers[developer] = true;
    publishers[publisher] = true;
  })

  // Is the same as pushing a series of promises
  const promises = [
    // Destruct an array of promises to create a developer
    ...Object.keys(developers).map(name => create(name, 'developer')),

    // Destruct an array of promises to create a publisher
    ...Object.keys(publishers).map(name => create(name, 'publisher')),

    // Destruct an array of promises to create a category
    ...Object.keys(categories).map(name => create(name, 'category')),

    // Destruct an array of promises to create a platform
    ...Object.keys(platforms).map(name => create(name, 'platform')),
  ];

  // Solve all promises at one turn
  return Promise.all(promises);
}

async function getGameInfo(slug) {
  try {
    const { JSDOM } = require("jsdom");

    const body = await axios.get(`https://www.gog.com/en/game/${slug}`);
    const dom = new JSDOM(body.data);

    const description = dom.window.document.querySelector('.description');

    return {
      rating: 'BR0',
      short_description: description.textContent.slice(0, 160),
      description: description.innerHTML,
    }
  } catch (e) {
    console.log("GetGameInfo ", Exception(e));
  }
}

function timeout(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

async function setImage({ image, game, field = "cover" }) {
  try {
    const url = `https:${image}_bg_crop_1680x655.jpg`;
    const { data } = await axios.get(url, { responseType: "arraybuffer" });
    const buffer = Buffer.from(data, "base64");

    const FormData = require("form-data");
    const formData = new FormData();

    formData.append("refId", game.id);
    formData.append("ref", "game");
    formData.append("field", field);
    formData.append("files", buffer, { filename: `${game.slug}.jpg` });

    console.info(`Uploading ${field} image: ${game.slug}.jpg`);

    await axios({
      method: "POST",
      url: `http://${strapi.config.host}:${strapi.config.port}/upload`,
      data: formData,
      headers: {
        "Content-Type": `multipart/form-data; boundary=${formData._boundary}`,
      },
    });
  } catch (e) {
    console.log("SetImage ", Exception(e));
  }
}

async function createGames(products = []) {
  await Promise.all(
    products.map(async product => {
      const item = await getByName(product.title, 'game');

      if (!item) {
        console.info(`Creating: ${product.title}...`);

        const categories = await Promise.all(
          product.genres.map(genre => getByName(genre, 'category'))
        );

        const platforms = await Promise.all(
          product.supportedOperatingSystems.map(so => getByName(so, 'platform'))
        );

        const developers = [await getByName(product.developer, 'developer')];
        const publisher = await getByName(product.publisher, 'publisher');
        const gameInfo = await getGameInfo(product.slug);

        const game = await strapi.services.game.create({
          name: product.title,
          slug: product.slug.replace(/_/g, '-'),
          price: product.price.amount,
          release_date: new Date(Number(product.globalReleaseDate) * 1000).toISOString(),
          categories,
          platforms,
          developers,
          publisher,
          ...gameInfo,
        });

        // Upload of cover image
        await setImage({ image: product.image, game });

        // Upload of gallery images
        await Promise.all(
          product.gallery
            .slice(0, 5)
            .map(url => setImage({ image: url, game, field: "gallery" }))
        );

        await timeout(2000); // wait 2s

        return game;
      }
    })
  );
}

module.exports = {
  populate: async (params) => {
    try {
      const gogAPIURL = `https://www.gog.com/games/ajax/filtered?mediaType=game&${qs.stringify(params)}`;
      const { data: { products } } = await axios.get(gogAPIURL);

      await createManyToManyData(products);
      await createGames(products);
    } catch (e) {
      console.log("Populate ", Exception(e));
    }
  }
};
