FROM node:8.9.1-alpine

# Set the current working directory to the new mapped folder.
WORKDIR /usr/src/app

COPY package*.json ./

# Bundle app source
COPY . .

RUN npm install

RUN npm install -g serve

RUN npm run build

EXPOSE 5000

CMD [ "serve", "-s", "build" ]