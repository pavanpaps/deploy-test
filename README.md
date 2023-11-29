### DOCKERFILE Explaination

**FROM node:latest**

This line specifies the base image that Docker container will be built upon. In this case, the base image is `node:latest`.

**WORKDIR /app**

This line sets the working directory for the container to `/app`.

**COPY . .**

This line copies all of the files from the current directory to the `/app` directory in the container.

**RUN npm install**

This line installs the dependencies for the application using npm, the Node.js package manager.

**EXPOSE 3000**

This line exposes port 3000 inside the container.

**USER node**

This line sets the default user for the container to `node`. This is to prevent `root` user to run but use `node` user to run the container

**CMD ["node","app.js"]**

Command to run the app.

# Usage
1. <code>git clone https://github.com/eMahtab/node-express-hello-world </code>
2. Copy Dockerfile contents into a new Dockerfile
3. Build the image by <code>docker build -t my-node-app .</code>
4. Run the image by using <code>docker run -p 3000:3000 my-node-app</code>
5. Copy Public IP address (ex: 54.67.121.190:3000) or use http:localhost:3000 to view result