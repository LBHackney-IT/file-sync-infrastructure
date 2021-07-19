

init:
	cd terraform && aws-vault exec hackney-dev-scratch -- terraform init

apply:
	cd terraform && aws-vault exec hackney-dev-scratch -- terraform apply