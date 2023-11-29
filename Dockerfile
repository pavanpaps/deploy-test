FROM node:latest
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
USER node
CMD ["node","app.js"]
