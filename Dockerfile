FROM node:14-buster-slim

WORKDIR /app

COPY ./backstage . 

RUN yarn install && \
    yarn tsc && \
    yarn build 

#CMD ["node", "packages/backend", "--config", "app-config.yaml"]
