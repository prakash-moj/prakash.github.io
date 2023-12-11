
module "rds" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-rds-instance?ref=6.0.0"

  vpc_name = var.vpc_name

  application              = "test"
  environment_name         = var.environment
  is_production            = false
  infrastructure_support   = "support"
  team_name                = "cloud"
  db_instance_class        = "db.t4g.small"
  db_max_allocated_storage = "10000"
  rds_family               = "postgres12"
  db_engine_version        = "12"
  namespace                = "prakash-dev"
  business_unit            = "cloud-platform"

  db_name             = "test"
  
  # Set to true for replica database. No backups or snapshots are created for read replica
  skip_final_snapshot        = "true"
  db_backup_retention_period = 0

  providers = {
    aws = aws.london
  }
}