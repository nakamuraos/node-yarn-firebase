FROM node:12-alpine

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL maintainer="thinh.hoang <thinhhoang3030@gmail.com>" \
  org.opencontainers.image.title="Node 12, Yarn and Firebase Admin, Functions and Tools" \
  org.opencontainers.image.description="Lightweight Docker image based on NodeJS 12 with Yarn and Firebase Admin, Functions and Tools." \
  org.opencontainers.image.authors="thinh.hoang <thinhhoang3030@gmail.com>" \
  org.opencontainers.image.documentation="https://github.com/nakamuraos/node-yarn-firebase/README.md" \
  org.opencontainers.image.url="https://github.com/nakamuraos/node-yarn-firebase" \
  org.opencontainers.image.source="https://github.com/nakamuraos/node-yarn-firebase.git" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.version=$VERSION \
  org.opencontainers.image.revision=$VCS_REF \
  org.opencontainers.image.created=$BUILD_DATE

# Commands
RUN \
  apk update \
  && apk upgrade \
  && apk add --no-cache git yarn
RUN \
  yarn global add firebase-functions@latest firebase-admin@latest firebase-tools@latest
