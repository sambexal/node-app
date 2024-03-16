from alpine
LABEL maintainer = "sambexal6@gmail.com"

RUN apk update

RUN apk add --update nodejs
RUN apk add --update npm

copy . /src

WORKDIR /src

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node", "./app.js"]
