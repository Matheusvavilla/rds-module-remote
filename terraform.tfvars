environment                 = "dev"
identifier                  = "labmva"
db_name                     = "teste123"
engine                      = "postgres"
engine_version              = "17.5"
allow_major_version_upgrade = true
blue_green_update           = true
instance_class              = "db.t4g.micro"
storage_type                = "gp2"
allocated_storage           = "10"
username                    = "mvadba"
password                    = "Welcome#1234"

#manage_master_user_password = true
backup_retention_period = 1
backup_window           = "21:00-22:00"
skip_final_snapshot     = true

##parameter_group
parameter_group        = aws_db_parameter_group.parameter_group.name
parameter_group_family = "postgres17" #Exemplo mysql8.4 ou postgresql16

db_parameters = [
  {
    name         = "rds.logical_replication"
    value        = "1"
  }
]

