# Lacework Multiple Account Configuration Example
  
[![IaC](https://app.soluble.cloud/api/v1/public/badges/a62dd66c-06cb-4a12-81fc-fe0daecf7d2d.svg?orgId=217215739745)](https://app.soluble.cloud/repos/details/github.com/kenlangdon/lw-multi-acct-config?orgId=217215739745)
  
### About
Terraform scripts to demonstrate integrating cloud environments with the Lacework Polygraph Data Platform for configuration and compliance (agentless deployment)

### What you need
 - Create 3 AWS accounts using the [Instruqt](https://play.instruqt.com/lacework/tracks/aws-multi-account-lab) module. (You may need access)
 - Install and Configure the [Lacework CLI](https://docs.lacework.com/cli/)
 - 2 or more AWS Accounts
 - Install [Terraform](https://www.terraform.io/downloads)  
 - Install the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)
 - A code editor (VS Code, Atom, Notepad...tee hee, etc.)
 - Clone this repo
 - Optionally: install [tfswitch](https://tfswitch.warrensbox.com/Install/)

### Setup

For the AWS CLI, update your credenitals file with the access keys/secrets for the accounts to configure. It's typically located in `~/.aws/credentials` and this is how my example looks:

```
[account-1]
aws_access_key_id = One20CharacterString
aws_secret_access_key = ThisStringIs40CharctersLongWhichIsLonger

[account-2]
aws_access_key_id = One20CharacterString
aws_secret_access_key = ThisStringIs40CharctersLongWhichIsLonger

[account-3]
aws_access_key_id = One20CharacterString
aws_secret_access_key = ThisStringIs40CharctersLongWhichIsLonger
```

### Steps

From within the ../terraform/aws/ directory

```bash 
terraform init
```

```bash 
terraform validate
```

```bash 
terraform plan
```

If all looks good...

```bash 
terraform apply -auto-approve
```

### Check the Lacework UI

Wait about 5 minutes and you will see the accounts in the Lacework UI. Go to Settings -> Cloud accounts to see them listed, likely in a pending status. In a little while you'll see compliance reports, go to Compliance -> AWS -> Reports.
