# Docker Practice
![Star Trek](./images/whale-fin.webp)
Docker practice file for Cohort-10 (C-10) using Express.js.

<br>

## PreReq
```
npm install express cors nodemon
```

<br>

## Process
1. Create .dockerignore
```
node_modules
```
2. In package.json add...
```
"start": "nodemon index.js"
```
* if no `nodemon` replace it with `node`

<br>

## Docker Process Status
```
docker ps
```

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
* 3005 => port to access container's port 3000 that's in the image

<br>

## Terminate
```
docker kill $TITLE
```

$TITLE => Name of your container or Container Id.


##
```
docker run -p 3010:3000 -v 
```
`-p`: Map the port to the container's port $FULL_URI:/src "test-api":0.2
```

$FULL_URI => full URI to your location. Type `pwd`, copy paste the URI
