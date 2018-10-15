FROM node:8
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm i
COPY . /usr/src/app
ENV NODE_ENV production
RUN npm install
EXPOSE 3000
CMD [ "npm", "start" ]
