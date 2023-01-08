#!/bin/bash
# Set Account ID 
AWS_ACCOUNT_ID=$(aws sts get-caller-identity | jq -r '.Account')
echo AWS_ACCOUNT_ID=$AWS_ACCOUNT_ID
