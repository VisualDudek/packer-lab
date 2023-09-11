# packer-lab
Packer Lab

## Key takeaways
**Packer** is used for creating machine images or container images for multiple platforms from a single source configuration. It's often used in conjunction with other tools like Vagrant and Terraform to automate the provisioning of infrastructure and software.

cmds:
```sh
packer fmt .
packer validate .
packer init # to install plugin
```

## Devcontainers
(see `devconteiner.json`)

image: Python 3.11

features:
- aws-cli
- ansible
- packer

vscode ext.:
- hasicorp.hcl