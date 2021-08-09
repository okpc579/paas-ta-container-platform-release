#!/bin/bash


# DEPLOY
bosh -n -d image-repository deploy image_repository_manifest.yml \
	-l vars.yml \
	-v deployment_name=image-repository
