FROM alpine

ENV NPM_CONFIG_LOGLEVEL info

WORKDIR /root

COPY . .

RUN apk add strace tshark curl bash gcompat nodejs npm

RUN chown root:root /usr/bin/dumpcap

RUN node -v
RUN npm version

RUN npm install pnpm -g