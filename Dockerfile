FROM oven/bun

WORKDIR /app

ADD package.json .

RUN bun install

ADD index.js .

CMD bun index.js

