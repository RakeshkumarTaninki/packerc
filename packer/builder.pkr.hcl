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
      "sudo python3 app/manage.py runserver",
      "sudo crontab -l > cron_bkp",
      "sudo echo '*/5 * * * * python3 app/manage.py runserver >/dev/null 2>&1' >> cron_bkp",
      "sudo crontab cron_bkp",
      "sudo rm cron_bkp"
    ]
  }
}