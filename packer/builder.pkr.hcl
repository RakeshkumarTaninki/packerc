build {
  name = "assignment-4-image"
  source "source.amazon-ebs.vm" {
    ssh_username = "ec2-user"
  }
  provisioner "shell" {
    inline = [
      "echo provisioning all the things",
      "sudo yum install python3 -y",
    ]
  }
}