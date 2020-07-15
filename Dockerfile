FROM node:14.5-alpine

USER root

WORKDIR /usr/local/src/app

COPY ./package.json .

RUN npm install

ENTRYPOINT [ "/usr/local/src/app/node_modules/.bin/wrangler" ]