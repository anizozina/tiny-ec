FROM node:16-alpine
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY tsconfig.json ./
COPY ./src ./src

RUN npm run build

CMD ["node", "lib/index.js"]