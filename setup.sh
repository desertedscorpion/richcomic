#!/bin/bash

mkdir ${HOME}/workspace/greenlobster &&
git -C ${HOME}/workspace/greenlobster init &&
git -C ${HOME}/workspace/greenlobster remote add origin git@github.com:desertedscorpion/greenlobster.git &&
git -C ${HOME}/workspace/greenlobster pull origin develop &&
ln --symbolic --force ${HOME}/bin/post-commit.sh ${HOME}/workspace/greenlobster/.git/hooks/post-commit &&
mkdir ${HOME}/workspace/richcomic &&
git -C ${HOME}/workspace/richcomic init &&
git -C ${HOME}/workspace/richcomic remote add origin git@github.com:desertedscorpion/richcomic.git &&
git -C ${HOME}/workspace/richcomic pull origin develop &&
ln --symbolic --force ${HOME}/bin/post-commit.sh ${HOME}/workspace/richcomic/.git/hooks/post-commit &&
true