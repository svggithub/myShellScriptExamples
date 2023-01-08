#!/bin/bash

while true;
do
    read -erp "Is this a government cloud AWS account? " yn
    case $yn in
        [Yy]* ) GOV_CLOUD="yes"; break;;
        [Nn]* ) GOV_CLOUD="no"; break;;
        * ) echo "Please enter a valid answer";;
    esac
done
