+++
title = "Creating your environment"
chapter = false
weight = 1
+++

{{% notice warning %}}
You are responsible for the cost of the AWS services used while running this workshop in your AWS account.
{{% /notice %}}

In order for you to succeed in this workshop, you will need to run through a few steps in order to properly setup and configure your environment. These steps will include provisioning some services, installing some tools, and downloading some dependencies as well. Here is the AWS infrastructure we are going to build and use in this workshop:

1. Task Execution Role
2. Contrast Security API keys will be stored in Secrets Manager
3. Contrast Secrets Manager Policy
4. CloudWatch logs group
5. ECS Cluster
6. EC2 Security Group
7. Task Definition
8. Fargate WebApp Service
9. Load balancer


{{< figure src="/images/aws_inf.png" width="600" height="500">}}

### Clone the source repository for this workshop

Now we want to clone the repository that contains all the content and files you need to complete this workshop.

```bash
cd ~/environment && \
git clone https://github.com/aws-samples/aws-modernization-with-contrastsecurity.git
```
### Create Underlying VPC Infrastructure

```bash
aws cloudformation create-stack --stack-name ContrastSecurityWorkshopVPC --template-body file:///$(pwd)/cfn/aws-workshop-vpc.yaml --capabilities CAPABILITY_NAMED_IAM
```

### Check VPC Resource Creation Status

```bash
aws cloudformation wait stack-create-complete --stack-name ContrastSecurityWorkshopVPC
```

### Configure ECS Stack Parameters

Add Contrast keys from contrast_security.yaml to cfg/contrast-aws-workshop-ecs-parameters.json file.

### Create ECS Resources

```bash
aws cloudformation create-stack --stack-name ContrastSecurityWorkshopECS --template-body file:///$(pwd)/cfn/contrast-aws-workshop-ecs.yaml --parameters file://$(pwd)/cfg/contrast-aws-workshop-ecs-parameters.json --capabilities CAPABILITY_NAMED_IAM
```

### Check ECS Resource Creation Status

```bash
aws cloudformation create-stack-complete --stack-name ContrastSecurityWorkshopECS
```

### Getting outputs

You will need at least the Load balancer DNS to be able to access WebGoat. You can do it with this command:

```bash
aws cloudformation describe-stacks --stack-name ContrastSecurityWorkshopECS
```

