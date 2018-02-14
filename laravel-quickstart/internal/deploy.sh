#!/bin/bash

CONFIG_ENV=$1
SERVER_ENV=$2
RELEASE_BRANCH=$3
RELEASE_VERSION=$4

PROJECT_NAME="laravel-quickstart-internal.com"
SITE_NAME="laravel-quickstart-internal.com"

BASE="/bitnami/jenkins/1001/deploy-scripts/base"
DEPLOY_BASEDIR="/bitnami/jenkins/1001/deploys"

#SOURCE MASTER
SRC_MASTER_DIR="/bitnami/jenkins/sourcemaster"
SRC_MASTER_URL="http://34.216.219.226:8080"

#SERVER
SERVERS="ubuntu@34.212.82.214"
SERVER_DOCKER_PATH="/var/dockers/$SITE_NAME"
SERVER_SOURCE_PATH="/var/www/$SITE_NAME"

#GITS
GITREPO_URL="https://$GIT_USER:$GIT_PASS@github.com/jengweb"
SOURCE_REPO="$GITREPO_URL/laravel-quickstart-source.git"
CONFIG_REPO="$GITREPO_URL/laravel-quickstart-config.git"
DOCKER_REPO="$GITREPO_URL/laravel-quickstart-dockers.git"
SOURCE_SUBDIR="web"

#BUILD DIR
DEPLOY_DIR="$DEPLOY_BASEDIR/$PROJECT_NAME"
DOCKER_DIR="$DEPLOY_DIR/dockers"
SOURCE_DIR="$DEPLOY_DIR/source"
CONFIG_DIR="$DEPLOY_DIR/config"
BUILD_DIR="$DEPLOY_DIR/build"
FINISH_DIR="$DEPLOY_DIR/finish"

#DOCKER IMAGES
GIT_IMAGE="jengweb/git-client:1.0"
COMPOSER_IMAGE="jengweb/composer:7.1"

source /bitnami/jenkins/1001/deploy-scripts/base/deploy-base.sh

run
