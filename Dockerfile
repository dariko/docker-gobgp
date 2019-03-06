FROM alpine
ADD https://github.com/osrg/gobgp/releases/download/v2.1.0/gobgp_2.1.0_linux_amd64.tar.gz /
RUN tar zxvf /gobgp_2.1.0_linux_amd64.tar.gz

FROM alpine
RUN apk add --no-cache bash
COPY --from=0 /gobgp /usr/local/bin/
COPY --from=0 /gobgpd /usr/local/bin/
ADD run.sh /run.sh
