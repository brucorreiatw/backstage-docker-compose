FROM node:14-buster-slim

WORKDIR /app

COPY ./temp . 

RUN yarn install --frozen-lockfile && \
    yarn tsc && \
    yarn build && \
    cp packages/backend/dist/skeleton.tar.gz . && \
    tar xzf skeleton.tar.gz && rm skeleton.tar.gz && \
    yarn install --frozen-lockfile --production --network-timeout 300000 && rm -rf "$(yarn cache dir)" && \
    cp packages/backend/dist/bundle.tar.gz . && \
    tar xzf bundle.tar.gz && rm bundle.tar.gz

CMD ["node", "packages/backend", "--config", "app-config.yaml"]
