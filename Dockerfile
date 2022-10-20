FROM node:14.16.0 as base


WORKDIR /app
COPY package.json ./
EXPOSE 9000
RUN npm install
COPY . .


FROM base as production
ENV NODE_ENV=production

CMD [ "node", "server.js" ]