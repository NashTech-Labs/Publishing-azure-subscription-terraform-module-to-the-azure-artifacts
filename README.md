# DuckCreek.TerraformModule.subscription
This module can create Azure Subscriptions under an Microsoft Customer Agreement (MCA). 

## Prerequisites

Before you can use this Terraform module, you will need to have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) - v1.0.5 or later
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) - v2.26.0 or later

You will also need to have an Azure azurerm_billing_enrollment_account_scope. 

## Usage

To use this Terraform module, follow these steps:

From your local, generate and Set up SSH key pair for Github.

Clone this Git repo to your local machine.

```bash
git@github.com:duck-creek/DuckCreek.TerraformModule.subscriptioncreation.git
```

Change into the directory containing the module.

```bash
cd tf.subscription

```

Initialize Terraform in the directory.

```bash
terraform init
```
```bash
terraform plan
```
```bash
terraform apply
```


## Inputs
| Variable                   | Type   | Description                          | Default Value                                  |
|----------------------------|--------|--------------------------------------|------------------------------------------------|
| billing_account_name       | string | the billing_account_name value        | ""                                             |
| subscription_name          | string | Name of the subscription              | IAC-Compute-Subscription                      |
| workload                   | string | the workload type                    | DevTest                                        |
| enrollment_account_name    | string | the enrollment_account_name value     | ""                                             |
| azure_client_id            | string | app registration client_id            | ""                                             |
| azure_client_secret        | string | app registration client_secret value  | ""                                             |
| azure_tenant_id            | string | app registration tenant_id            | ""                                             |
| azure_subscription_id      | string | subscription_id                       | ""                                             |
| management_group_association| string | management group                      | /providers/Microsoft.Management/managementGroups/IAC-Compute |