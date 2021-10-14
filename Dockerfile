FROM node:14-alpine
COPY . .
RUN npm install
RUN npm install nodemon
EXPOSE 8080
ENTRYPOINT ["npm", "start"]