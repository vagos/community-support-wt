FROM node:14
WORKDIR .
COPY package.json .
RUN npm install
ADD . .
CMD npm start
