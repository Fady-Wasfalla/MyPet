
FROM node:latest
# /RUN apk add --no-cache nodejs npm
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .


EXPOSE 5000

# ENTRYPOINT ["node"]
 CMD ["npm","start"]