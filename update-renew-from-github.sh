#! /bin/sh -e

# keep the files in renew up to date with git repo
# this script will be called from a cronjob every 7 days
# cwalsh 2020-10-10

# ensure we are in the correct directory
cd /var/www/renew

# delete all files in directory except for this script
ls | grep -v update-renew-from-github.sh | xargs rm -rf --

# clone renew directory
git clone http://github.com/ULCompSoc/skynet.ie-renew.git

# copy files from git repo to main directory
cp -r skynet.ie-renew/* .

# remove the git repo from the directory
rm -rf skynet.ie-renew
