FROM ubuntu:latest

RUN apt-get update && apt-get install -y nodejs npm

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3030

CMD ["node", "server.js"]
