provider "aws" {
  access_key = "AKIAJL5JVZQJ5YS4364A"                     # User admin_terraform
  secret_key = "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"
  region     = "eu-west-1"                                # Region Ireland
  version    = "~> 1.24"
}

resource "aws_vpc" "web_vpc" {
  cidr_block           = "192.168.100.0/24"
  enable_dns_hostnames = true

  tags {
    Name = "Web VPC"
  }
}
