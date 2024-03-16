FROM node


WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY start-ui.sh ./
COPY .eslintignore ./
COPY *.js ./
COPY *.json ./

EXPOSE 8080
ENTRYPOINT [ "sh", "start-ui.sh" ]
