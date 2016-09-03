#!/bin/bash

if [[ -v RABBITMQ_CONF ]]; then 
    echo "Custom template found.";
    printenv RABBITMQ_CONF > /etc/confd/templates/rabbitmq.tmpl; 
fi

exec "$@"
