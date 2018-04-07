
.PHONY: dev-image
dev-image:
	docker build -t devops-ansible-dev .

.PHONY: run-dev-image
run-dev-image:
	docker exec -it devops-ansible-dev 2>/dev/null || \
	docker run \
		--rm \
		--name devops-ansible-dev \
		-it \
		devops-ansible-dev \
                bash
