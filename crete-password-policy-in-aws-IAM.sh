#!/bin/bash
# crete-password-policy-in-aws-IAM.sh
# Purpose:  In order to be HIPAA compliant, password policy must be in place for an AWS account.  This script checks for the
# existance of such policy in an AWS account, and creates if not present
# Outputs:      none
# Requires: AWS CLI Access to account in question
# Attaches blanket "deny all changes" policy to cloudformation stacks present in AWS account


echo "Checking on the existance of password policy..."
POLICY_EXISTS=$(aws iam get-account-password-policy | jq '.PasswordPolicy')

if [ "$POLICY_EXISTS" == "" ]; then
    echo "No password policy exists.  Creating the default"
    aws iam update-account-password-policy \
      --require-uppercase-characters \
      --require-lowercase-characters \
      --require-numbers \
      --require-symbols \
      --password-reuse-prevention 12 \
      --max-password-age 90 \
      --minimum-password-length 14
else
    echo "Password Policy already in place"
fi
