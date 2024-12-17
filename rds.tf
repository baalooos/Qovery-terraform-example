resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "main"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "My DB subnet group"
  }
}

# EKS Cluster with Public Endpoint
resource "aws_db_instance" "default" {
  db_subnet_group_name    = aws_db_subnet_group.db_subnet_group.name
  allocated_storage       = var.db_storage
  db_name                 = var.db_name
  engine                  = var.db_engine
  engine_version          = var.db_version
  instance_class          = var.db_instance
  username                = var.db_username
  password                = var.db_password
  parameter_group_name    = "default.mysql8.0"
  skip_final_snapshot     = true
  backup_retention_period = 5
  blue_green_update {
    enabled = var.db_enable_bg
  }
}
