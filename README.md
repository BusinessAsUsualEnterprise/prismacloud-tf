# Prisma Cloud Terraform

This repository gives some examples of how to leverage [terraform](https://registry.terraform.io/providers/PaloAltoNetworks/prismacloud/latest/docs) for configuring Prisma Cloud.

## Examples
### Policies
Define build policies as code and apply them via terraform.

Examples partly based on [the documentation](https://docs.prismacloud.io/en/enterprise-edition/content-collections/governance/custom-build-policies/custom-build-policies)


## Getting started
1. Setup **.prismacloud_auth.json** with URL, username and password
2. Initialize terraform with `terraform init`
3. Apply policies with `terraform apply`

### GitHub Actions Pipeline
This repository contains an example pipeline for maintaining policies and compliance standards in a GitOps way.

Required Environment Variables:
- PC_ACCESS_KEY
- PC_SECRET_KEY
- PRISMA_API_URL

Depending on backend:
- Secrets
    - AWS_ACCESS_KEY_ID
    - AWS_SECRET_ACCESS_KEY
    - AWS_SESSION_TOKEN
- Variables
    - AWS_REGION