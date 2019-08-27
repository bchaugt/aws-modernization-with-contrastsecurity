+++
title = "Cleanup"
chapter = false
weight = 10
+++

### Cleanup 

As for the cleanup, all you have to do is to delete the Cloudformation stacks with the following commands

```bash
aws cloudformation delete-stack --stack-name ContrastSecurityWorkshopVPC
```

```bash
aws cloudformation delete-stack --stack-name ContrastSecurityWorkshopECS
```
This will delete all AWS resources that were created.

