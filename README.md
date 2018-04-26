# jekyll-sitebuilder
A docker container based on alpine and jekyll designed to programmatically build jekyll-generated content as a command line application.

## Status

Fully functional, tested on an [adaptation](https://github.com/andrewbanchich/forty-jekyll-theme) of Forty by [HTML5UP](https://html5up.net/)

## How it works

You have that desktop / server / device where you need to host or work with Jekyll and don't want to install and maintain a sane installation of Jekyll (or are unable to do it for whatever reason) and are in the need to maintain/build Jekyll content, like a website or a blog.

This project provides docker-as-an-application CLI util, and is able to build your content and generate your compiled assets without messing with your host operating system.

## Usage

### Building the container

```
$ git clone https://github.com/pega/jekyll-sitebuilder
$ cd jekyll-sitebuilder
$ sudo docker build . -t jekyll-builder
```

### Running it

Once the image is built, you need to run the container with the appropriate parameters.

> Notice that this action will set up the Jekyll environment and it will generate content for the first time.

```
$ sudo docker run --name mysite -v /path/to/mysite/jekyllsource:/site jekyll-builder
```

There are two important parameters here: `mysite` and `/path/to/mysite/jekyllsource`.

#### Project name

`mysite` is a custom name that you will use to identify your jekyll project. Is up to you.

#### Jekyll location

`/path/to/mysite/jekyllsource` is the path where your current jekyll source code is located. Notice the syntax: After the path, there is a colon followed by "/site". 

Don't modify "/site", is used by the container to work with your source code.

### Daily usage

Once the container has been run for the first time, everything you should do to build your site, is:

```
$ sudo docker start mysite
```

And that's it.

### Debugging / other tasks

If you need to perform other tasks and/or want to understand how the Jekyll installation works, you will need to run the following:

```
$ sudo docker run -it --name mysite -v /path/to/mysite/jekyllsource:/site jekyll-builder /bin/sh
```

Remember to change names and paths as appropriate (See "Running it").

## Credits

This work is based on [Irakli Nadareishvili](https://github.com/inadarei)'s [alpine-jekyll](https://github.com/inadarei/alpine-jekyll).

## License

See LICENSE file.

## Contribute

This is a personal project and it doesn't aim to support every scenario out there. However, if this somehow fails to work as intended, open an issue and I'll do my best to work on it.
