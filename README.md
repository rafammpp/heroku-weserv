# heroku-weserv
[Weserv](https://github.com/weserv/images) service hosted in heroku

## How to deploy to heroku
1. Clone this repo to your local machine:
    `git clone git@github.com:rafammpp/heroku-weserv.git`
2. Add a remote to your local repository:
    `heroku git:remote -a example-app`
3. Set the stack of your app to container:
    `heroku stack:set container`
4. Deploy!
    `git push heroku main`

To make updates you only need to do `git push heroku main`

## Why
There are some [limitations](https://devcenter.heroku.com/articles/container-registry-and-runtime#known-issues-and-limitations) in heroku docker service. But with a little bit of trial and error, I manage to deploy the [weserv](https://github.com/weserv/images) service to heroku.

## How
There are two ways of deploying a Docker image into heroku. We are gonna use the [heroku.yml](https://devcenter.heroku.com/articles/build-docker-images-heroku-yml) method.

Here we have three files:
1. Dockerfile, to tell heroku what to do and how to build the app.
2. heroku.yml, to tell heroku what to do with the files, a how to run the app.
3. imagesweserv-no-cache.template, a template of a nginx configuration file, this is most important file here. The top 1 limitation of heroku is that you don't know the port beforehand, we get one assigned by heroku. So we need to use a template to replace the port in the nginx configuration file on the fly. Another important thing to note is that heroku dynos don't have a lot of memory so we disable the server cache, and let Cloudflare cache the images. In previous tries I was using the default nginx configuration file, and it was using a lot of memory, and the dyno was crashing. This file is based on the [weserv no-cache nginx configuration file](https://github.com/weserv/images/blob/5.x/ngx_conf/imagesweserv-no-cache.conf). The only difference is the `_PORT_` variable; I disabled the ipv6 resolver option, I was getting errors because of this; and I removed access to the docs. We don't need to tell people how to use our private service.