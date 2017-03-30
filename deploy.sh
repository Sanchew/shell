#!/bin/bash

echo 'deploy shell running'
filename=`ls output -t | head -n 1`
meta=`echo $filename | awk '{sub(/^[^.]*./,"");sub(".ipa","");print}'`
version=${meta%.*}
env=$(echo ${meta##*.}|tr '[a-z]' '[A-Z]')
AppName=${filename%.*}
appname=$(echo $AppName|tr '[A-Z]' '[a-z]')

sed -i "/id='tag'/a\\\t\t<div><a class='btn btn-default btn-lg btn-block' style='margin-right:10px' href='itms-services://?action=download-manifest&url=https://github.com/lijianwei-jj/FuckApp/raw/master/manifest.$appname.$meta.plist'>Install $AppName $version $env</a></div>" /home/website/views/index.html
