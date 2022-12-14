FROM node:16.15.0
WORKDIR /
COPY . .
RUN npm install
RUN npm run build
CMD [ "npm", "start"]