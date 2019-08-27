---
title: "Contrast Security DevSecOps Workshop"
chapter: true
weight : 1
---

# Contrast Security DevSecOps Workshop

### Welcome

<p style='text-align: left;'>
    In this workshop, you will learn how to use Contrast Security to find vulnerabilities in a sample application deployed on AWS Fargate. The deployment is managed with AWS CloudFormation.
</p>

### Key Concepts
<p style='text-align: left;'>
Before we get started,let's make sure we define and explain the main concepts and objects we will be dealing in this workshop:
</p>

- AWS (Amazon Web Services) - a collection of cloud computing services. We will talk in detail about how to create necessary AWS infrastructure in [this section] ({{< ref"/prerequisites/2_create_aws_account.md" >}}).
- Contrast Security - a modern application security tool build for DevSecOps, more about it [here] ({{< ref"/about-contrast" >}}).
- WebGoat - A deliberately vulnerable web application developed by OWASP. You can find more information [here] (https://www.owasp.org/index.php/Category:OWASP_WebGoat_Projectx)


### Objectives
- Learn the basics of application security
- Gain familiarity with Contrast Security
- Learn how to add security to an application deployed on AWS Fargate

### What we will cover in this workshop
- Application security basics
- How Contrast Security works
- How to create an account to use Contrast Security Community Edition
- How to use Contrast Security with an app deployed on AWS Fargate.
- Usage of AWS CloudFormation to automate the deployment of infrastructure

### Workshop flow

<p style='text-align: left;'>
    Each section or module contained in this workshop is designed to guide you through each step of the process to build the architecture referenced above. This is accomplished by using AWS CloudFormation as our starting point. 
</p>


{{% notice warning %}}
<p style='text-align: left;'>
The examples and sample code provided in this workshop are intended to be consumed as instructional content. These will help you understand how various AWS services can be architectured to build a solution while demonstrating best practices along the way. These examples are not intended for use in production environments.
</p>
{{% /notice %}}