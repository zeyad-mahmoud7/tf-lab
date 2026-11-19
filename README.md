# tf-lab: Keycloak as code

Terraform configuration that builds a Keycloak test realm from code.

## What it creates
- Realm tf-lab with an OTP policy (TOTP, SHA1, 6 digits, 30 seconds)
- Realm roles: it-support, helpdesk
- A branch group
- A test OpenID Connect client

## Files
- versions.tf: Terraform and provider versions
- provider.tf: how Terraform logs in to Keycloak
- realm.tf, roles.tf, groups.tf, clients.tf: the resources

## Usage
1. Create a service account client in the tf-lab realm with manage-realm, manage-users and manage-clients roles.
2. Copy terraform.tfvars.example to terraform.tfvars and set your Keycloak URL.
3. Export the client secret as TF_VAR_keycloak_client_secret.
4. Run terraform init, terraform plan, terraform apply.

## Security
No secrets are stored in this repo. State files and tfvars are ignored by Git.
