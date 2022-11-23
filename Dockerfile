FROM node:18.7.0

COPY ./node-express-hello-world  .

WORKDIR node-express-hello-world

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
