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
	gem install --no-document jekyll -v 2.5 && \
	gem install --no-document \
			bundler \
			redcarpet \
			kramdown \
			maruku \
			rdiscount \
			RedCloth \
			liquid \
			pygments.rb \
			sass \
			safe_yaml \        
			jekyll-paginate \
			jekyll-sass-converter \
			jekyll-sitemap \
			jekyll-feed \
			jekyll-redirect-from && \
	rm -rf 		/root/src \
			/tmp/* \
			/usr/share/man \
			/var/cache/apk/* 
# apk search --update

EXPOSE 4000
 
CMD /bin/bash
