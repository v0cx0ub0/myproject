FROM node:18.7.0

RUN git clone https://github.com/eMahtab/node-express-hello-world.git

WORKDIR node-express-hello-world

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]

