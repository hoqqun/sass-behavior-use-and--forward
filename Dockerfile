FROM node:lts-slim
ENV LANG C.UTF-8

WORKDIR /usr/src

COPY package.json .

RUN yarn install --frozen-lockfile

CMD [ "yarn", "sass", "index.scss", "index.css"]
