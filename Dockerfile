FROM node:16-alpine
WORKDIR /usr/src/app

RUN npm install --location=global npm@latest

COPY ./package.json ./package-lock.json ./
RUN npm install
COPY ./ ./
RUN NODE_ENV=production npm run build

CMD NODE_ENV=production npm run start