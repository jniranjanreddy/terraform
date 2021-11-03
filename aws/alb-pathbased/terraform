user_data               = <<EOF
#! /bin/bash
                sudo apt-get update
                sudo apt-get install -y apache2
                sudo systemctl start apache2
                sudo systemctl enable apache2
                echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
EOF
#image = "ami-0a9d27a9f4f5c0efc"
#instance = "t2.micro"
