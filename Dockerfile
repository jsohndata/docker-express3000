# Starting with base image of node 18
FROM node:18-alpine3.16

# Setup working dir within the container
WORKDIR /src/

# Copy code from the host machine to the container
COPY . .

# Install dependencies
RUN npm install

# Port
EXPOSE 3000

# Run App
CMD ["npm", "start"]
