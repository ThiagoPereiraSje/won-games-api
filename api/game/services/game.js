'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-services)
 * to customize this service
 */

module.exports = {
  populate: async (params) => {
    console.log("Chamando o serviço populate!");
    console.log("params: ", params);

    const cat = await strapi.services.category.find({ name: 'Action' });

    console.log({ cat });
  }
};
