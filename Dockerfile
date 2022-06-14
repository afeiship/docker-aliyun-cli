FROM alpine:3.8

ENV ALIYUNCLI_VERSION 3.0.102
# 添加jq，以JSON的格式输出
RUN apk add --no-cache jq

# 获取并安装阿里云CLI工具
RUN wget https://aliyuncli.alicdn.com/aliyun-cli-linux-${ALIYUNCLI_VERSION}-amd64.tgz
RUN tar -xvzf aliyun-cli-linux-${ALIYUNCLI_VERSION}-amd64.tgz
RUN rm aliyun-cli-linux-${ALIYUNCLI_VERSION}-amd64.tgz
RUN mv aliyun /usr/local/bin/