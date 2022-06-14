# copy from: https://github.com/abcfy2/docker-aliyun-cli/blob/main/Dockerfile

FROM alpine:3.8
RUN apk add --no-cache libc6-compat
ARG ALIYUN_CLI_VERSION=3.0.102

# https://aliyuncli.alicdn.com/aliyun-cli-linux-3.0.102-amd64.tgz
RUN wget -qO- "https://aliyuncli.alicdn.com/aliyun-cli-linux-${ALIYUN_CLI_VERSION}-amd64.tgz" |\
    tar zxf - -C /usr/local/bin/ && \
    aliyun version

# check aliyun version
CMD ["aliyun"]
# ENTRYPOINT [ "/usr/local/bin/aliyun" ]