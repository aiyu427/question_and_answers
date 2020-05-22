FROM node:14.3.0-alpine3.11

WORKDIR /app

# system update
RUN apk update && \
    apk upgrade

ENV HOST 0.0.0.0
EXPOSE 8080