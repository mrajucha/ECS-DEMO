# FROM oven/bun

# WORKDIR /app

# ADD package.json .

# RUN bun install

# ADD index.js .

# CMD bun index.js

FROM node:23

WORKDIR /app

ADD package.json .

RUN npm install

ADD index.js .

CMD npm start



