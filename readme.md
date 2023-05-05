# Docker Practice

## Process
1. Create .dockerignore
```
node_modules
```
2. In package.json add...
```
"start": "node index.js"
```

<br>

## Recipe (for Dockerfile)
```
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
```

<br>

## Cerate and Run Image
```
docker build -t "test-api":0.1 .
```
* test api => name
* 0.1 => version
* " ." => this directory

<br> 

## Run Instance
```
docker run -p 3005:3000 "test-api":0.1
```
* 3005 => virtual port to access port 3000 that's in the image

