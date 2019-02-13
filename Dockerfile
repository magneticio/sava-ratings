FROM node:lts-alpine

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

ADD ratings-db-0x.json /default-db.json
ADD routes.json /routes.json

EXPOSE 8080
ADD run.sh /run.sh
ENTRYPOINT ["sh", "/run.sh"]
CMD []
