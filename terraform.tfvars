environment       = "dev"
identifier        = "labmva"
db_name           = "db_terraform"
engine            = "mysql"
engine_version    = "8.4.6"
instance_class    = "db.t4g.micro"
storage_type      = "gp2"
allocated_storage = "10"
username          = "mvadba"
password          = "Welcome#123"

#manage_master_user_password = true
backup_retention_period = 0
backup_window           = "21:00-22:00"
skip_final_snapshot     = true

##parameter_group
parameter_group        = aws_db_parameter_group.parameter_group.name
parameter_group_family = "mysql8.4" #Exemplo mysql8.4 ou postgresql16
db_parameters = [
  {
    name  = "autocommit"
    value = "1"
  }
]
###Optins group link para apoio.
/*
MySQL: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.MySQL.Options.AuditPlugin.html
Oracle: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.Options.overview.html
SQL Server: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.SQLServer.Options.html
*/
options_group        = aws_db_option_group.options_group.name
major_engine_version = "8.4" #De acordo com a major version da engine que você está usando
option_name          = "MARIADB_AUDIT_PLUGIN"

db_options = [
  {
    name  = "SERVER_AUDIT_FILE_ROTATIONS"
    value = "51"
  },
  {
    name  = "SERVER_AUDIT_FILE_ROTATE_SIZE"
    value = "100000"
  }
]