#!/user/bin/env bash

# Verify user has AWS CLI access
! aws sts get-caller-identity && {
  echo "No valid CLI credentials -- please log in."
  exit 1
}
