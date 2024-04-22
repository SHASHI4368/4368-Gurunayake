FROM node:20-alpine

COPY .env /app/
COPY package.json /app/
COPY server.js /app/
COPY config /app/config/
COPY controllers /app/controllers/
COPY models /app/models/
COPY routes /app/routes/

WORKDIR /app

RUN npm install

CMD ["node", "server.js"]

