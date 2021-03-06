#!/bin/bash

# Load environment variables
source /etc/profile

# Print deployment info
DEPLOYMENT_TIME=$( date -u "+%Y/%m/%d %H:%M:%S" )
echo "Deployment finished at: "$DEPLOYMENT_TIME" UTC" > /var/www/sample_app/deployment/public/deployment_time.txt

# Arrange folder permissions
chown -R nginx:nginx /var/www/sample_app/deployment
chmod -R 775 /var/www/sample_app/deployment

service nginx restart
