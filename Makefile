DEID_NAME=deid
DEID_VERSION=1.1
PERL_VERSION=5.30

build:
	@echo "Building image '${DEID_NAME}:${DEID_VERSION}'..."

	docker build \
		--build-arg PERL_VERSION=${PERL_VERSION} \
		--tag ${DEID_NAME}:${DEID_VERSION} \
		--tag ${DEID_NAME}:latest \
		.

run:
	@echo "Running image '$(DEID_NAME):latest'..."

	docker run -it --rm ${DEID_NAME}:latest
