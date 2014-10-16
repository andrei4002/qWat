require 'active_support/all'
require 'yaml'
require './sql_commands'
require './sql_converter'
require './import_schema'
require './import_sige_data'

SqlConverter.new.convert
ImportSchema.new.run
#ImportSigeData.new.run