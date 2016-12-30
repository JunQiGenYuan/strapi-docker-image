FROM node:6

RUN npm install strapi -g

RUN mkdir -p /var/www
COPY . /var/www

EXPOSE 1337
VOLUME ["/app"]

ADD docker-entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
CMD ["/entrypoint.sh"]
