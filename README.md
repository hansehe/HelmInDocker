# Helm In Docker

Package helm charts with docker!

The [hansehe/helm](https://hub.docker.com/repository/docker/hansehe/helm) image includes helm binaries, and makes it possible to package helm charts inside of a container.

## Example
### Package Chart:
```
docker run -it -v C:/MyLocalDirectoryTo/charts/:/charts -w /charts hansehe/helm package my-helm-chart
```

## Development
- Requirements:
  - python & pip
    - https://www.python.org/
  - pip install DockerBuildManagement
    - https://github.com/DIPSAS/DockerBuildManagement

- Build & Publish
```
dbm -build -publish
```