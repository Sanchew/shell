#!/bin/bash

echo 'deploy shell running'
filename=`ls tmpop -t | head -n 1`
meta=${filename:8:9}
version=${meta%.*}
env=$(echo ${meta##*.}|tr '[a-z]' '[A-Z]')

sed -i "/Install App (/a\\\t\t<div><a class='btn btn-default btn-lg btn-block' style='margin-right:10px' href='itms-services://?action=download-manifest&url=https://github.com/lijianwei-jj/FuckApp/raw/master/manifest.$meta.plist'>Install App $version $env</a></div>" /home/website/views/index.html
