FROM node:14.5-alpine

WORKDIR /usr/local/src/app

COPY ./package.json .

RUN npm --no-color install

ENTRYPOINT [ "/usr/local/src/app/node_modules/.bin/wrangler" ]