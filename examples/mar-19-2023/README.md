# AWS APP Runner infra

To Deploy the Sample infra:

- Update the `values.tfvars` file.
- Initialize Terraform:
    ```
    terraform init
    ```
- Apply Terraform changes:
    ```
    terraform apply -var-file=values.tfvars
    ```
