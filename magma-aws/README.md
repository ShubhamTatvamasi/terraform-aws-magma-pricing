# magma-aws

Initialize terraform:
```bash
terraform init
```

Create Plan:
```bash
./terraform plan -target=module.orc8r -out=magma-aws.tfplan

./terraform plan \
  -target=module.orc8r \
  -out=magma-aws.tfplan > /dev/null && \
  ./terraform show -json magma-aws.tfplan > magma-aws-plan.json

```
