FROM node:16-buster

RUN npm install -g npm

WORKDIR /home/project/docs


COPY ./project/docs/package.json .
COPY ./project/docs/yarn.lock .
RUN yarn install




CMD  tail -f /dev/null
# CMD  yarn dev