

init:
	cd terraform && aws-vault exec hackney-dev-scratch -- terraform init

apply:
	cd terraform && aws-vault exec hackney-dev-scratch -- terraform apply

deploy:
	cd hello_world/src/hello_world && dotnet lambda package hello_world
	aws-vault exec hackney-dev-scratch -- aws s3 cp hello_world/src/hello_world/hello_world.zip s3://file-sync-infra-build-artifacts/hello_world.zip
