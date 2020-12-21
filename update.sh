MESSAGE=$1
if [ -z "$1" ]
  then
    MESSAGE="generate-updated-website"
fi
hugo -d docs && git add docs -A && git commit -a -m"$MESSAGE" && git push
