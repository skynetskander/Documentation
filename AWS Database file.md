# Create a DynamoDB table using the AWS CLI:

aws rds create-db-instance \
    --db-instance-identifier mydbinstance \
    --allocated-storage 20 \
    --db-instance-class db.t2.micro \
    --engine mysql \
    --master-username mydbuser \
    --master-user-password mydbpassword

# Create a DynamoDB table using the AWS CLI:
aws dynamodb create-table \
    --table-name MyTable \
    --attribute-definitions AttributeName=ID,AttributeType=N AttributeName=Name,AttributeType=S \
    --key-schema AttributeName=ID,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5

HTML