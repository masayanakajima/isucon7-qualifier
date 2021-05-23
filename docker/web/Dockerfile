FROM alpine AS build-dev

ARG GIT_URL=https://github.com/masayanakajima/isucon7-code.git

RUN \
  apk --no-cache add git && \
  git clone --depth=1 $GIT_URL /isubata && \
  rm -rf /isubata/.git

FROM nginx:1.10

COPY --from=build-dev /isubata /home/isucon/isubata
#COPY --from=build-dev /isubata/files/app/nginx.conf /etc/nginx/conf.d/isucon.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY isucon.conf /etc/nginx/conf.d/isucon.conf

ENV DOCKERIZE_VERSION v0.6.1
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && wget https://github.com/tkuchiki/alp/releases/download/v0.3.1/alp_linux_amd64.zip \
    && apt install unzip \
    && unzip alp_linux_amd64.zip \
    && install ./alp /usr/local/bin