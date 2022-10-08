FROM node:18

WORKDIR /usr/app

COPY package*.json ./
RUN npm install --force

COPY . .

EXPOSE 8080
CMD [ "node", "index.ts" ]
