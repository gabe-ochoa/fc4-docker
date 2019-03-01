# fc4-docker

A docker image for rendering fc4 diagrams:

https://fundingcircle.github.io/fc4-framework/

https://fundingcircle.github.io/fc4-framework/tool/

## Usage

Running this docker container will generate the fc4 diagrams in the mounted folder in /fc4/diagrams.

```
docker run -it -v ./diagrams:/fc4/diagrams gabeochoa/fc4
```