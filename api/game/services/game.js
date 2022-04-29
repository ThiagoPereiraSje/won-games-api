'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-services)
 * to customize this service
 */

const axios = require("axios");
const slugify = require("slugify");

const slugMask = /^[A-Za-z0-9-_.~]*$/g;

async function getByName(name, entityName) {
  const item = await strapi.services[entityName].find({ name });
  return item.length ? item[0] : null;
}

async function create(name, entityName) {
  const item = await getByName(name, entityName);

  if (!item) {
    return await strapi.services[entityName].create({
      name,
      slug: slugify(name, { lower: true }).match(slugMask).join(),
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
  const { JSDOM } = require("jsdom");

  const body = await axios.get(`https://www.gog.com/en/game/${slug}`);
  const dom = new JSDOM(body.data);

  const description = dom.window.document.querySelector('.description');

  return {
    rating: 'BR0',
    short_description: description.textContent.slice(0, 160),
    description: description.innerHTML,
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

        const game = {
          name: product.title,
          slug: product.slug.replace(/_/g, '-'),
          price: product.price.amount,
          release_date: new Date(Number(product.globalReleaseDate) * 1000).toISOString(),
          categories,
          platforms,
          developers,
          publisher,
          ...gameInfo,
        };

        const saved = await strapi.services.game.create(game);

        return saved;
      }
    })
  );
}

module.exports = {
  populate: async (params) => {
    const gogAPIURL = 'https://www.gog.com/games/ajax/filtered?mediaType=game&page=1&sort=popularity'

    const { data: { products } } = await axios.get(gogAPIURL);

    // console.log(products[0]);

    const qtdGames = 26;
    await createManyToManyData(products.slice(0, qtdGames));
    await createGames(products.slice(0, qtdGames));

    // console.log(await getByName(products[0].publisher, 'publisher'));
    // await create(products[1].publisher, 'publisher');
    // await create(products[1].developer, 'developer');

    // console.log(await getGameInfo(products[0].slug));

  }
};
