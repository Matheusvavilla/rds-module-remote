module "rds" {
  source = "git::https://github.com/Matheusvavilla/modules.git//rds?ref=v1.0.4"


  # variáveis do módulo
  environment                 = var.environment
  identifier                  = var.identifier
  db_name                     = var.db_name
  engine                      = var.engine
  engine_version              = var.engine_version
  blue_green_update           = var.blue_green_update
  allow_major_version_upgrade = true
  instance_class              = var.instance_class
  storage_type                = var.storage_type
  allocated_storage           = var.allocated_storage
  username                    = var.username
  password                    = var.password

  #Parameter Group
  parameter_group_family = var.parameter_group_family
  db_parameters          = var.db_parameters

  backup_retention_period = var.backup_retention_period
  backup_window           = var.backup_window
  skip_final_snapshot     = true

}
