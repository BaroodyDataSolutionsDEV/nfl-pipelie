infra:
	terraform -chdir=terraform/ init -input=false
	terraform -chdir=terraform/ apply

config:
	chmod +x generate_config.sh
	./generate_config.sh

users:
	chmod +x create-user.sh
	ssh ec2-user@$(terraform output -raw bastion_public_dns) 'bash -s' < ./create-user.sh ${HOME}/.ssh/biuser_kp.pub