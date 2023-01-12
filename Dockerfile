FROM node:alpine

RUN apk add --no-cache git

WORKDIR /app
RUN git clone https://github.com/fosscord/fosscord-server.git .

RUN npm install
RUN npm run setup

EXPOSE 3001

CMD ["node", "dist/bundle/start.js"]
