#!/usr/bin/env bash
echo "initializing elastic Beanstalk repo..."
eb init udagram-api -p "64bit Amazon Linux 2 v5.4.10 running Node.js 14" --region us-east-1

echo "create environement and set it as default..."
eb create -d udagram-api-dev

echo "connects to the created Elastic Beanstalk env..."
eb use udagram-api-dev

echo "deploy app to Elastaic Beanstalk environement..."
eb deploy udagram-api-dev

echo "Set environment variables...."

eb setenv AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION DB_PORT=$DB_PORT JWT_SECRET=$JWT_SECRET PORT=$PORT POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME URL=$URL
