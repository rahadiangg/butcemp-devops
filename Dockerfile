FROM node:18.18.2-alpine3.18

WORKDIR /app

LABEL version="1.0"
LABEL pembuat="mas choy"

# RUN apt install
RUN apk add vim nano

COPY *.js .
COPY *.json .

RUN npm install

ENTRYPOINT ["node"]
CMD ["app.js"]

EXPOSE 3000