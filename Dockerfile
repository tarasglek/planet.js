# docker build . -t kindle-planet
FROM node:9
RUN yarn global add http-server
RUN mkdir /deps && chown node /deps
WORKDIR /deps
USER node
COPY app/package.json /deps
RUN yarn install
COPY --chown=node app /app/
RUN ln -svf /deps/* /app
WORKDIR /app
CMD ./run.sh
