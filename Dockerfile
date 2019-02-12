FROM alpine:latest
MAINTAINER Pablo G. <dev@pega.sh>
RUN	apk upgrade --update && \
	apk add \
		ruby \
		ruby-dev \
		ruby-json \
		ruby-webrick \
		ruby-bigdecimal \
		ruby-etc \
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
COPY	run.sh	/usr/local/bin/run.sh
WORKDIR /site

CMD	/usr/local/bin/run.sh
