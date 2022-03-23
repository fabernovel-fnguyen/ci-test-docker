FROM node:14-buster-slim as builder

## DareBoost
# ARG DAREBOOST_API_TOKEN
# ENV DAREBOOST_API_TOKEN=${DAREBOOST_API_TOKEN}

# ## Slack
# ARG SLACK_API_TOKEN
# ENV SLACK_API_TOKEN=${SLACK_API_TOKEN}}
# ARG SLACK_CHANNEL_ID
# ENV SLACK_CHANNEL_ID=${SLACK_CHANNEL_ID}}

# # Google LightHouse - no secret required

# # Google BigQuery
# ARG GOOGLE_APPLICATION_CREDENTIALS
# ENV GOOGLE_APPLICATION_CREDENTIALS=${GOOGLE_APPLICATION_CREDENTIALS}

# # Qualys SSL Labs Server - no secret required

# # Mozilla Observatory
# ARG OBSERVATORY_API_URL
# ENV OBSERVATORY_API_URL=${OBSERVATORY_API_URL}
# ARG OBSERVATORY_ANALYZE_URL
# ENV OBSERVATORY_ANALYZE_URL=${OBSERVATORY_ANALYZE_URL}}

# Setup working directory and install dependencies
WORKDIR /usr/heart
COPY package.json .
RUN yarn install

WORKDIR /usr/heart
COPY entrypoint.sh .
RUN ["chmod", "+x", "entrypoint.sh"]

EXPOSE 3000
ENTRYPOINT ["/usr/heart/entrypoint.sh"]