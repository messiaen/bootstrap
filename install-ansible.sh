#!/bin/bash

apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y software-properties-common curl git build-essential && \
	apt-add-repository -y ppa:ansible/ansible && \
	apt-get update && \
	apt-get install -y curl git ansible build-essential && \
	ansible-galaxy collection install amazon.aws && \
	apt-get clean autoclean && \
	apt-get autoremove --yes
