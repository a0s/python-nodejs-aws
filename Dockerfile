ARG SRC_TAG=python3.9-nodejs16
ARG AWSCLI_VERSION=2.2.30
FROM nikolaik/python-nodejs:$SRC_TAG
WORKDIR /app
RUN \
    apt-get update && \
    apt-get install --no-install-recommends -y curl groff jq && \
    pip install git+https://github.com/aws/aws-cli.git#$AWSCLI_VERSION && \
    npm install -g serverless && \
    aws configure set cli_follow_urlparam false
