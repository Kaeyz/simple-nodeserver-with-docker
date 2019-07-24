# Specify a base image
FROM node:alpine

# Specify work directory
WORKDIR /usr/app

# Copy package.json file
COPY ./package.json ./

# Install dependencies
RUN npm install

# copy all app files
COPY ./ ./

# Default command
CMD ["npm", "start"]