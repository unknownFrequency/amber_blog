require "granite_orm/adapter/mysql"

Granite::ORM.settings.database_url = Amber.settings.database_url
Granite::ORM.settings.logger = Amber.settings.logger.dup
Granite::ORM.settings.logger.progname = "Granite"

