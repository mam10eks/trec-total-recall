FROM node:5.0

RUN mkdir /server
COPY npm-shrinkwrap.json /server
COPY package.json /server
COPY public /server/public
COPY routes /server/routes
COPY server.js /server
COPY util /server/util

WORKDIR /server
RUN npm install


ENTRYPOINT [ "node", "server.js" ]
