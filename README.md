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

