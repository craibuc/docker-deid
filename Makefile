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

tty:
	@echo "Creating terminal session..."

	docker run -it --rm -v ${PWD}/data:/app/data ${DEID_NAME}:latest /bin/sh

run:
	@echo "Running image '$(DEID_NAME):latest'..."

	docker run --rm -v ${PWD}/data:/app/data ${DEID_NAME}:latest