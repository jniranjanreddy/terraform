# provider "random" {
#   # Configuration options
# }

# resource "random_password" "password" {
#   length = 20
#   special = false
#   override_special = "_%@"
# }

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  #engine               = "postgres" # This oneis working ap-south-1
  engine               = "mariadb"
  identifier           =  "dev-db"     
  #engine_version       = "13"
  engine_version       = "10.6.7"  # This one is working ap-south-1
  instance_class       = "db.t3.medium"
  db_name              = "ntweeklydb001"
  username             = "dbadmin1"
  password             = "ntweeklydb001"
  skip_final_snapshot  = true
  publicly_accessible  = true

}
output "postgres_db" {
value = "aws_db_instance.default.engine"

}

output "postgresVersion" {
value = "aws_db_instance.default.engine_version"

}

