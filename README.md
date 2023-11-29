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