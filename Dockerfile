#FROM --platform=linux/arm64/v8 node:18
FROM --platform=linux/amd64 node:18

#configure working diretory

WORKDIR /app

COPY package.json .

RUN npm install

#bundle app source code

COPY . ./

# Add file .env
RUN if test -f ".env"; then echo "File .env exist."; else echo "File .env does not exist." && touch .env && cp .env.default .env; fi

EXPOSE 8080
CMD ["npm", "start"]