build {
  name = "assignment-4-image-{{timestamp}}"
  source "source.amazon-ebs.vm" {
    ssh_username = "ec2-user"
  }
  provisioner "shell" {
    inline = [
      "echo provisioning all the things",
      "sudo yum install python3 -y",
      "sudo yum install git -y",
      "cd /var/",
      "sudo git clone https://github.com/RakeshkumarTaninki/packerc.git",
      "cd /var/packerc/",
      "sudo python3 -m pip install -r requirements.txt",
      "sudo wget https://kojipkgs.fedoraproject.org/packages/sqlite/3.10.0/1.fc22/x86_64/sqlite-3.10.0-1.fc22.x86_64.rpm",
      "sudo yum install sqlite-3.10.0-1.fc22.x86_64.rpm -y"
    ]
  }
}