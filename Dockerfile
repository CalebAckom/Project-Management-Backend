# Base Image
FROM node:16-alpine

# Set working directory
WORKDIR /home/caleb

# Copy project dependencies
COPY package*.json ./

# Install packages
RUN npm install

# Copy application
COPY . ./

# Exposing port
EXPOSE 4000

# Run command
CMD [ "npm", "run", "dev" ]