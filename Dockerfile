FROM node:10.16.3-alpine
WORKDIR /var/app
RUN apk update \
    && apk add --update --no-cache graphviz font-bitstream-type1
RUN npm install -g adr
ONBUILD COPY . .
