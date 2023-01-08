#!/bin/bash
# Check for prerequiste software
type python3 >/dev/null 2>&1 || { echo >&2 "I require python3 but it's not installed.  Aborting."; exit 1; }
type minikube >/dev/null 2>&1 || { echo >&2 " I req minikube but it's not installed. Aborting."; exit 1; }
type brew >/dev/null 2>&1 || { echo >&2 " I require Brew but it's not installed. Aborting."; exit 1; }
