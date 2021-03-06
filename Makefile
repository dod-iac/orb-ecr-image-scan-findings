
NAMESPACE=dod-iac
ORB_NAME=ecr-image-scan-findings

.PHONY: help
help: ## Print the help documentation
	@grep -E '^[\/a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# ----- CLI Targets -----

.PHONY: create
create: ## Create the orb
	circleci orb create $(NAMESPACE)/$(ORB_NAME)

.PHONY: validate
validate: ## Validate the orb
	circleci orb validate orb.yml

.PHONY: publish-dev
publish-dev: ## Publish dev version of orb
	circleci orb publish orb.yml $(NAMESPACE)/$(ORB_NAME)@dev:first

.PHONY: publish-prod
publish-prod: ## Publish the prod version of orb
	circleci orb publish promote $(NAMESPACE)/$(ORB_NAME)@dev:first patch

.PHONY: source-dev
source-dev: ## View the orb dev source
	circleci orb source $(NAMESPACE)/$(ORB_NAME)@dev:first
