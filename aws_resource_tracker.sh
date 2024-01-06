#!/bin/bash

#####################################
# Author : Mamadou
# Date: 06 Jan
#
# Version: v1
#
# This script will report the AWS resource usage
######################################


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list EC2 Instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list Lambda funtions
echo "Print list of lambda functions"
aws lambda list-functions

#list IAM users
aws iam list-users
