

init:
	cd terraform && aws-vault exec hackney-dev-scratch -- terraform init

apply:
	cd terraform && aws-vault exec hackney-dev-scratch -- terraform apply

deploy:
	aws-vault exec hackney-dev-scratch -- dotnet lambda deploy-function hello_world