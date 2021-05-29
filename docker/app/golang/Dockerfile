FROM golang:1.9

ARG GIT_URL=https://github.com/masayanakajima/isucon7-code.git

RUN git clone $GIT_URL /home/isucon/isubata
RUN \
  cd /home/isucon/isubata/webapp/go/ && \
  git pull origin master

WORKDIR /home/isucon/isubata/webapp/go
RUN make

EXPOSE 5000

ENTRYPOINT ["/home/isucon/isubata/webapp/go/isubata"]
