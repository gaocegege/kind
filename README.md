# Kind

Run Kubernetes in Docker.

```bash
$ ./scripts/build-localkube.sh
$ docker build -t kind .
$ docker run -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/localkube:/var/lib/localkube --net=host gaocegege/kind --containerized=true
```
