## ObserveRTC website

### Edit the website Online

1. Change the content you want to change through a pull request.
   
2. If your pull request is approved then wait a bit until an administrator rebuilds the public directory
   (For administrators: `./update.sh`)
   
3. After the public directory is rebuild your changes are visible in the webpage.

## Edit the website Offline:

Prerequisite: 

1. Install hugo (`brew install hugo`)

2. Clone the repository and install prerequisite

```shell
  git clone --recurse-submodules --depth 2 https://github.com/ObserveRTC/website/
  cd website
  npm install
```
Note: The site uses docsy, and therefore we need to recursively pull the corresponding repositories too.
More info: [https://themes.gohugo.io/docsy/](https://themes.gohugo.io/docsy/)

3. `hugo serve`

4. Edit

5. If you finished, create a PR contains your changes

6. An administrator can run the `./update.sh`

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
The original template for this site is made by using [Docsy](https://github.com/google/docsy), 
and this site is made by ObserveRTC Team, All rights reserved.
