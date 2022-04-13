build {
  name = "assignment-4-image-{{timestamp}}"
  source "source.amazon-ebs.vm" {
    ssh_username = "ec2-user"
  }
  provisioner "shell" {
    inline = [
      "echo provisioning all the things",
      "sudo yum install gcc openssl-devel bzip2-devel libffi-devel -y",
      "cd /opt ",
      "sudo wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz ",
      "sudo tar xzf Python-3.9.6.tgz ",
      "cd Python-3.9.6 ",
      "sudo ./configure --enable-optimizations ",
      "sudo make altinstall ",
      "sudo rm -f /opt/Python-3.9.6.tgz ",                  
      "sudo yum install git -y",
      "cd /var/",
      "sudo git clone https://github.com/RakeshkumarTaninki/packerc.git",
      "cd /var/packerc/",
      "sudo python3 -m pip install -r requirements.txt"
    ]
  }
}