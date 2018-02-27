FROM node:8.9.1-alpine

# Set the current working directory to the new mapped folder.
WORKDIR /usr/src/app

# Expose the port that serve will use
EXPOSE 5000

# Install serve
RUN npm install -g serve

# Add build folder to container
ADD build /usr/src/app/build

# RUN serve -s build
CMD [ "serve", "-s", "build" ]