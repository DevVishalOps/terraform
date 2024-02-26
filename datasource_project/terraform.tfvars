#mention your region image name before run terraform
image_name = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*" 

instance_type = "t3.micro"

tags_names = {
      Name = "DataSource Project"
    }