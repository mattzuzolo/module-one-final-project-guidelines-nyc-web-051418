require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
ActiveRecord::Base.logger = nil
# require_all 'lib'
# require_all 'app'
# require_all 'db'

require_relative '../app/models/character.rb'
require_relative '../app/models/title.rb'
require_relative '../app/models/house.rb'
