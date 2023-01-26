FROM node:alpine

RUN mkdir -p /app

WORKDIR /app

COPY ../../yarn.lock .

COPY ../../package.json .

RUN yarn install

COPY ../.. .

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]


