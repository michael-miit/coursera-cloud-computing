#!/bin/bash

echo "Beginning destroy script for module-02"

INSTANCEIDS=$(aws ec2 describe-instances --output=text --query 'Reservations[*].Instances[*].InstanceId' --filter "Name=instance-state-name,Values=running,pending")

echo $INSTANCEIDS

if [ "$INSTANCEIDS" != "" ]
    then    
        aws ec2 terminate-instances --instance-ids $INSTANCEIDS
        echo "Waiting for all instances report state as terminated"
        aws ec2 wait instance-terminated
        echo "Finish destroying instances..."
    else
        echo "There are no running values in $INSTANCEIDS to be terminated"
fi