FROM node:9-alpine

RUN mkdir -p /app

#WORKDIR /app

ADD . /app

RUN apk update && apk add tzdata &&\
     apk del tzdata && apk add bash make gcc g++ python

RUN cd /app && npm install

ENTRYPOINT exec /app/scripts/run.sh ${ENV_TO_TEST:-ga-automacao} ${FEATURE_TO_TEST:-regressive}
