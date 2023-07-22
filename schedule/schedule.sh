#!/bin/bash
# A shell script implementation of schedule
# Linux users: replace the osascript line with the following line:
# notify-send "Published! 🎉" "The post, $title, is now live."

usage="schedule.sh -- schedule blog posts with Jekyll
Usage: ./schedule.sh <post> <datetime> <message>

Arguments:
 post       filename of the scheduled post, press <TAB> to select a file from the _drafts directory
 datetime   publish date and time, see `man at` for the set of valid formats
 message    git commit message
"

if [[ $# -lt 3 ]]; then
    echo "$usage"
    return
fi

# Replace this directory with your local website directory.
cd ~/website

post="_drafts/$1"
title="$(sed '3q;d' $post | cut -c 8-)"

pubdate=$(date -d "$2" +%F)
pubtime=$(date -d "$2" "+%T %z")

at $2 <<- EOF
sed -i "7 i date: $pubdate $pubtime" $post"
mv $post _posts/$pubdate-$1
rm -rf _site
git add .
git commit -m "$3"
bundle exec jekyll build
netlify deploy --prod --dir=_site
reattach-to-user-namespace osascript -e 'display notification "The post, $title, is now live." with title "Published! 🎉"'
EOF