FROM golang:1.9

ARG GIT_URL=https://github.com/masayanakajima/isucon7-code.git

RUN git clone $GIT_URL /home/isucon/isubata
WORKDIR /home/isucon/isubata/bench
RUN \
  go get github.com/constabulary/gb/... && \
  gb vendor restore && \
  make

ENTRYPOINT ["bin/bench"]
CMD ["-remotes", "web"]
