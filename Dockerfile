# download deid's files from source
FROM alpine:latest AS stage
RUN apk add --no-cache wget
RUN wget -r -N -c -np https://physionet.org/files/deid/1.1/

# copy selected files to image (discarding all files in 'stage')
FROM perl:5.30
WORKDIR /app
COPY --from=stage ./physionet.org/files/deid/1.1/deid.config ./physionet.org/files/deid/1.1/deid.pl ./
COPY --from=stage ./physionet.org/files/deid/1.1/dict ./dict
COPY --from=stage ./physionet.org/files/deid/1.1/lists ./lists
