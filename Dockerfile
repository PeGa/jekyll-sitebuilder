FROM alpine:latest
MAINTAINER Pablo G. <dev@pega.sh>

RUN	apk upgrade --update && \
	apk add \
		ruby \
		ruby-dev \
		ruby-json \
		build-base \
		git \
		libffi \
		libffi-dev \
		build-base && \
	gem install --no-document \
		jekyll \
		bundler && \
	rm -rf 		/root/src \
			/tmp/* \
			/usr/share/man \
			/var/cache/apk/* 
CMD /bin/bash
