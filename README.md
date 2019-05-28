# docker-python-chromedriver

Python with Chromedriver, for running automated tests

## Includes:

 - Python
 - Google Chrome
 - Chromedriver

## Versions:

### Python 3:

 - `3.5, python3.5-chrome74` (based on python:3.5, [Dockerfile](https://github.com/brandonschabell/docker-python-chromedriver/blob/master/Dockerfile))
 - `3.6, python3.6-chrome74` (based on python:3.6, [Dockerfile](https://github.com/brandonschabell/docker-python-chromedriver/blob/master/Dockerfile))
 - `3.7, python3.7-chrome74, latest` (based on python:3.7, [Dockerfile](https://github.com/brandonschabell/docker-python-chromedriver/blob/master/Dockerfile))
 - `3.8-rc, python3.8-rc-chrome74` (based on python:3.8-rc, [Dockerfile](https://github.com/brandonschabell/docker-python-chromedriver/blob/master/Dockerfile))


## Usage:

Run the followings in your terminal:

```
$ cd [your working directory]
$ docker run -it -w /usr/workspace -v $(pwd):/usr/workspace brandonschabell/python-chromedriver:[version] bash
```

This will create a container from the image. Then you could starting running the commands in the container as in your working directory.
