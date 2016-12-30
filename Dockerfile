FROM node:4

RUN npm install strapi -g --registry=https://registry.npm.taobao.org

RUN mkdir -p /var/www
# COPY . /var/www
RUN strapi new app

COPY ./hookRouterSurportGraphqlConfig.js /usr/local/lib/node_modules/strapi/lib/configuration/hooks/router/index.js

EXPOSE 1337
VOLUME ["/app"]

ADD docker-entrypoint.sh /entrypoint.sh

RUN chmod 755 /entrypoint.sh
CMD ["/entrypoint.sh"]
