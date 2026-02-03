#!bin/bash
terraform apply auto-approve -var-file =./terraform/variables.tfvars
terraform output -json > ./ansible/tf_outputs.json
ansible-playbook -i ./ansible/inventory/hosts.ini ./ansible/playbook.yml