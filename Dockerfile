ARG SRC_TAG=python3.8-nodejs14
ARG AWSCLI_VERSION=2.2.30
FROM nikolaik/python-nodejs:$SRC_TAG
RUN \
    apt-get update && \
    apt-get install --no-install-recommends -y curl groff && \
    pip install git+git://github.com/aws/aws-cli.git#$AWSCLI_VERSION && \
    npm install -g serverless && \
    aws configure set cli_follow_urlparam false
