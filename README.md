# Terraform Backend Azure

## Steps

1. Rename beconf.tfvars.example file by beconf.tfvars and replace all variables and then execute in the console 
 
 ```sh
 terraform init -backend-config=beconf.tfvars
 ```
2. Excute the plan

```sh
terraform plan
```

3. Apply

```sh
terraform apply
```

**Note** is very important begin with az login [link to Azure!](https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli?view=azure-cli-latest)
