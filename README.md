# docker-deid
Dockerfile for PhysioNet's De-Identification software package.

## Usage
Assumes that you've cloned this repository locally.

### Build
Build the image.

```bash
docker build \
        --build-arg PERL_VERSION=5.30 \
        --tag deid:1.1 \
        --tag deid:latest \
        .
```

### Terminal
Start container with an interactive terminal.

```bash
docker run -it --rm deid:latest
```

## Make
Run the `build` task (see the `Makefile`).
```bash
make build
```

### Run
Run the `run` task (see the `Makefile`).

```bash
make run
```

## References

- https://physionet.org/content/deid/1.1/
- https://github.com/craibuc/docker-deid