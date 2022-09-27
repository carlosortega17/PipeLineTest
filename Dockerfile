FROM node:16.15.0
WORKDIR /
COPY /package.json /package.json
COPY /package-lock.json /package-lock.json
COPY /tsconfig.json /tsconfig.json
RUN npm install
RUN npm run build
COPY . .
CMD [ "npm", "start"]