# packer-lab
Packer Lab

think of `pip install -r requirements.txt` but on higher abstraction level and for broader scope at OS-level with OS-image as a product-result.

[Packer main page](https://developer.hashicorp.com/packer)

## Key takeaways

**hcl language**
HashiCorp Configuration Language
- declarative syntax
- block structure
- attributes and values
- variables and locals
- expressions
- interpolation
- *reusable modules*
- *provider-based* configuration
**on top of that Packer adds:**
- plugins
- data sources `source`
- builders `build`

**Packer** is used for creating machine images or container images for multiple platforms from a single source configuration. It's often used in conjunction with other tools like Vagrant and Terraform to automate the provisioning of infrastructure and software.

**file extension** `[build-name].pkr.hcl`


cmds:
```sh
packer fmt .
packer validate .
packer init # to install plugin
```

## prerequisite - Devcontainers
(see `devconteiner.json`)

image: Python 3.11

features:
- aws-cli
- ansible
- packer

vscode ext.:
- hasicorp.hcl