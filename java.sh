#!/bin/bash

run () {
    docker stop javac && docker rm javac
    # docker-compose run javac
    docker-compose up
}

build () {
    docker build -t javac .
}

remove () {
    rm -f ./src/*.class
}

if [ "$1" = 'run' ]; then
    run
elif [ "$1" = 'build' ]; then
    build
elif [ "$1" = 'rm' ]; then
    remove
else
    echo 'Usage: ./build.sh [OPTION]'
    echo 'options'
    echo '    build: build docker image'
    echo '    run  : compile ./src directory'
    echo '    rm   : remove class file'
fi