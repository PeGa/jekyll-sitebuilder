#!/bin/sh
bundle install
bundle exec jekyll build
siteUser=`stat -c %u .`
siteGroup=`stat -c %g .`
chown -R $siteUser:$siteGroup _site
