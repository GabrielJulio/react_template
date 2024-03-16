FROM node

WORKDIR /app
ENV NODE_ENV production
ENV PATH /app/node_modules/.bin:$PATH
RUN npm install
COPY start-ui.sh ./
COPY .eslintignore ./
COPY *.js ./
COPY *.json ./

EXPOSE 8080
ENTRYPOINT [ "sh", "start-ui.sh" ]
