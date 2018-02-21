# Set node image to start from
FROM node:8.9.1-alpine
# Set the current working directory to the new mapped folder.
WORKDIR /usr/src/app
COPY package*.json ./
# install only dependencies, not devDependencies
RUN npm install --only=production 
# Bundle app source
COPY . .
EXPOSE 80
CMD [ "npm", "start" ]