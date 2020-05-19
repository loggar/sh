#!/bin/bash

# set variables (imitation | real)
serveridvar="imitation"

# Any subsequent commands which fail will cause the shell script to exit immediately
set -e

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

# prompt variables
read -p 'git username: ' uservar
read -sp 'git password: ' passvar

# env
source /root/.nvm/nvm.sh

echo -e "\n\n## start install..\n"

# _library
echo "## _library"
cd /opt/server_ecosystem/_library
git fetch http://$uservar:$passvar@10.1.10.30/projects/NODE_LIB.git
git reset --hard origin/master # the last npm install changed package-lock etc.
git pull http://$uservar:$passvar@10.1.10.30/projects/NODE_LIB.git origin master
npm install

# job-schedulers
echo "## job-schedulers"
cd /opt/server_ecosystem/job-schedulers
git fetch http://$uservar:$passvar@10.1.10.30/projects/JOB_SCHEDULERS.git
git reset --hard origin/master # the last npm install changed package-lock etc.
git pull http://$uservar:$passvar@10.1.10.30/projects/JOB_SCHEDULERS.git origin master
npm install

# class-enroll-status
echo "## class-enroll-status"
cd /opt/server_ecosystem/class-enroll-status
git fetch http://$uservar:$passvar@10.1.10.30/projects/CLASS_ENROLL_STATUS.git
git reset --hard origin/master # the last npm install changed package-lock etc.
git pull http://$uservar:$passvar@10.1.10.30/projects/CLASS_ENROLL_STATUS.git origin master
npm install
SERVER_ID=$serveridvar npm run build:server:prod

# excel-prisms-update
echo "## excel-prisms-update"
cd /opt/server_ecosystem/excel-prisms-update
git fetch http://$uservar:$passvar@10.1.10.30/projects/PRISMS_UPDATE.git
git reset --hard origin/master # the last npm install changed package-lock etc.
git pull http://$uservar:$passvar@10.1.10.30/projects/PRISMS_UPDATE.git origin master
npm install

# pm2
echo "pm2"
cd /opt/server_ecosystem
pm2 ls
pm2 stop all || true
pm2 delete all || true
SERVER_ID=$serveridvar pm2 start ecosystem.config.js --env production
pm2 startup
pm2 save || true
pm2 ls
