dev-apply:
    git pull
    rm -rf ./terraform
    terraform init -backend-config=environments/dev/state.tfvars
    terraform apply -auto-approve

dev-destroy:
    git pull
    rm -rf ./terraform
    terraform init -backend-config=environments/dev/state.tfvars
    terraform destroy -auto-approve

prod-apply:
    git pull
    rm -rf ./terraform
    terraform init -backend-config=environments/dev/state.tfvars
    terraform apply -auto-approve

prod-destroy:
    git pull
    rm -rf ./terraform
    terraform init -backend-config=environments/prod/state.tfvars
    terraform destroy -auto-approve