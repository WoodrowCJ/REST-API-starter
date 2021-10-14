FROM node:12.18.1
WORKDIR /app
COPY ["package.json", "package-lock.json", "./"]
RUN npm install --production
COPY . .
CMD ["node", "start.js"]
EXPOSE 8080
ENTRYPOINT 