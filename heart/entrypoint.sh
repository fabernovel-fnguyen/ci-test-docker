#!/bin/bash

# HEART RUNNER MODULES

if [ -v $USE_CLI ];
    then yarn run rm-cli
    else echo "Heart CLI module will be used..."
fi

if [ -v $USE_API ];
    then yarn run rm-api
    else echo "Heart API module will be used..."
fi

# HEART ANALYSIS MODULES

if [ -v $USE_DAREBOOST ];
    then yarn run rm-dareboost
    else echo "Dareboost module will be used..."
fi

if [ -v $USE_LIGHTHOUSE ];
    then yarn run rm-lighthouse
    else echo "Google Lighthouse module will be used..."
fi

if [ -v $USE_OBSERVATORY ];
    then yarn run rm-observatory
    else echo "Mozilla Observatory module will be used..."
fi

if [ -v $USE_SSLLABS ];
    then yarn run rm-ssllabs
    else echo "Qualys SSL Labs Server module will be used..."
fi

# HEART LISTENER MODULES

if [ -v $USE_SLACK ];
    then yarn run rm-slack
    else echo "Slack module will be used..."
fi

if [ -v $USE_BIGQUERY ];
    then yarn run rm-bigquery
    else echo "Google BigQuery module will be used..."
fi


npx heart $@