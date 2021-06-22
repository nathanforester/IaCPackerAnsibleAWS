#!/bin/bash

sudo apt update

sudo apt -y install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt update

sudo apt install packer

sudo packer build build.json

export AMI_ID=$(jq -r '.builds[-1].artifact_id' manifest.json | cut -d ":" -f2)

ansible playbook -vvvv playbook.yml


