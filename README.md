## ObserveRTC website

### Edit the website

1. Change the content you want to change through a pull request.
   
2. If your pull request is approved then wait a bit until an administrator rebuilds the public directory
   
3. After the public directory is rebuild your changes are visible in the webpage.

### Running a container locally

1. Build the docker image

```bash
docker build -f dev.Dockerfile -t observertc-website:latest .
```

2. Run the built image

```bash
docker run --publish 1313:1313 --detach --mount src="$(pwd)",target=/home/docsy/app,type=bind docsy-example-dev:latest
```

## Copyright
This site is made by using [Docsy](https://github.com/google/docsy).
