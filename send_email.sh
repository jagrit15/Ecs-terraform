#!/bin/bash

SUBJECT="$1"
BODY="$2"
TO_EMAIL="jagritpandeer1969@gmail.com"
FROM_EMAIL="jagritpandeer1969@gmail.com"
REGION="us-east-1"

aws ses send-email \
    --region "$REGION" \
    --from "$FROM_EMAIL" \
    --destination "ToAddresses=$TO_EMAIL" \
    --message "Subject={Data=$SUBJECT,Charset=utf8},Body={Text={Data=$BODY,Charset=utf8}}"
