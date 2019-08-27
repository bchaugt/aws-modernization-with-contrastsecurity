#!/bin/sh

# Defaults
CONTRAST_APP_NAME=WebGoat
CONTRAST_URL=https://ce.contrastsecurity.com/Contrast

# Set Contrast environment variables
export JAVA_TOOL_OPTIONS="\
-javaagent:/opt/contrast/contrast.jar \
-Dcontrast.api.url=${CONTRAST_URL} \
-Dcontrast.api.api_key=${CONTRAST_API_KEY} \
-Dcontrast.api.service_key=${CONTRAST_SERVICE_KEY} \
-Dcontrast.api.user_name=${CONTRAST_USER_NAME} \
-Dcontrast.standalone.appname=${CONTRAST_APP_NAME} \
-Dcontrast.defend.rep=true \
-Dcontrast.defend.parameters.json=true"

# Run WebGoat
java -jar webgoat-container-7.1-war-exec.jar $@
