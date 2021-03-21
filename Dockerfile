#Use and existing docker image as a base
FROM node:alpine
WORKDIR '/docker-api'
COPY package.json ./
RUN npm install
COPY . .
CMD ["npm","run","start"]