# Lab - AWS integration

## Objective 
- Create aws AMI

## Prerequisites
- aws credetials, devcontainer will mount `HOME/.aws` dir into container
- Packer docs: [Amazon intergration](https://developer.hashicorp.com/packer/integrations/hashicorp/amazon)

## Lab Tasks

### Task 1: Install amazon plugin
create `aws.pkr.hcl` file and run `packer init .`
```hcl
# aws.pkt.hcl
packer {
  required_plugins {
    amazon = {
      source  = "github.com/hashicorp/amazon"
      version = "~> 1"
    }
  }
}
```
plugins will be installed in `~/.config/packer/plugins/`
list installed plugins `pakcer plugins installed`

### Task 2: Add data source "amazon-ebs"
create ebs-backed AMIs by launching a source AMI and re-packagig it into a new AMI.

Rewritew HCL2 config files to cannonical format `packer fmt .`
Check that a template is valid `packer validate .`

**minimort:** "Error: Missing build block" 
*Solution ->* A build block with one or more sources is required for executing a build.

### Task 3: Add builder
add `build` block and validate template `packer validate .`

### Task 4: Build AMI
run `packer build .`
check your AMIs using aws CLI `aws ec2 describe-images --owners self`

**minimort:** Run Packer build again -> Error: AMI NAme ... is used by an existing AMI
*Solution ->* e.g. add timestamp into `ami_name`