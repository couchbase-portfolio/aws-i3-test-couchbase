#!/usr/bin/env bash

STACK_NAME=$1

TEMPLATE_BODY="file://pillowfight.template"
REGION="us-east-1"

ServerInstanceCount="4"
InstanceType="c4.4xlarge"
Username="couchbase"
Password="foo123!"
ClusterDNS="1.2.3.4"
KeyName="couchbase-${REGION}"

aws cloudformation create-stack \
--capabilities CAPABILITY_IAM \
--template-body ${TEMPLATE_BODY} \
--stack-name ${STACK_NAME} \
--region ${REGION} \
--parameters \
ParameterKey=ServerInstanceCount,ParameterValue=${ServerInstanceCount} \
ParameterKey=InstanceType,ParameterValue=${InstanceType} \
ParameterKey=Username,ParameterValue=${Username} \
ParameterKey=Password,ParameterValue=${Password} \
ParameterKey=ClusterDNS,ParameterValue=${ClusterDNS} \
ParameterKey=KeyName,ParameterValue=${KeyName}
