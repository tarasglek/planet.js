FROM node:9
RUN mkdir -p /app && chown node -R /app
COPY * /app/
RUN yarn global add http-server
WORKDIR /app
USER node
RUN yarn install

