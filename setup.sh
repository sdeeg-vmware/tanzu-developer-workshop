#!/bin/bash

function print_usage() {
    echo "Setup script to install, delete, reinstall the workshop"
    echo "setup.sh <command>"
    echo "    install | i - install the portal and workshop"
    echo "    delete | d - delete the portal and workshop"
    echo "    re-install | ri - delete then install the portal and workshop"
}

function install() {
    kubectl apply -f resources/workshop.yaml
    kubectl apply -f resources/training-portal.yaml
}

function delete() {
    kubectl delete -f resources/training-portal.yaml
    kubectl delete -f resources/workshop.yaml
}

if [[ $1 == "" ]]; then 
    print_usage
    exit 1
fi

case $1 in

    install | i )
        install
        exit 0
        ;;

    delete | d )
        delete
        exit 0
        ;;
    
    refresh | recycle | restart | reinstall | re-install | ri )
        delete
        install
        exit 0
        ;;

    * )
        echo "fallout"
        print_usage
        ;;
esac
