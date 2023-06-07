#FROM --platform=linux/arm64/v8 node:18
FROM --platform=linux/amd64 node:18

#configure working diretory

WORKDIR /app

COPY package.json .

RUN npm install

#bundle app source code

COPY . ./
EXPOSE 8080
CMD ["npm", "start"]