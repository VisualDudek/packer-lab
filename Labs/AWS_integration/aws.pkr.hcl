# --- Task 1 ----
packer {
  required_plugins {
    amazon = {
      source  = "github.com/hashicorp/amazon"
      version = "~> 1"
    }
  }
}

# --- Task 2 ---
source "amazon-ebs" "amazon-linux" {
  region        = "eu-north-1"
  source_ami    = "ami-0b0d560d43e65a601"
  instance_type = "t3.micro"
  ssh_username  = "ec2-user"
  ami_name      = "amz-linux-packer"
  tags = {
    OS_Version    = "Amazon Linux"
    Base_AMI_Name = "{{ .SourceAMIName }}"
  }
}

# --- Task 3 ---
build {
  sources = [
    "source.amazon-ebs.amazon-linux",
  ]
}