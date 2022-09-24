FROM node:16-alpine
WORKDIR /usr/src/app

COPY ./package.json ./package-lock.json ./
RUN npm install

COPY ./ ./
RUN NODE_ENV=production npm run build

CMD NODE_ENV=production npm run start