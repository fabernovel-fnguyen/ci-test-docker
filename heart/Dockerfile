FROM node:14-buster-slim as build
# RUN \
#     apt-get update && \
#     apt-get install wget && \
#     # apt-get update --fix-missing && apt-get -y upgrade && \
#     # apt-get install -y git wget gnupg && apt-get clean && \
#     (wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -) && \
#     (sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list') && \
#     apt-get update && \
#     apt-get install -y google-chrome-stable --no-install-recommends && \
#     apt-get clean    

# Setup working directory and install dependencies
WORKDIR /usr/heart
COPY package.json .
COPY entrypoint.sh .
RUN \
    yarn run use-cli && \
    yarn run use-dareboost && \
    yarn run use-slack && \
    chmod +x entrypoint.sh

EXPOSE 3000
ENTRYPOINT ["/usr/heart/entrypoint.sh"]