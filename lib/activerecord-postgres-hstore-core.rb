require 'rails'
require 'pg'

require "activerecord_postgres_hstore_core/string"
require "activerecord_postgres_hstore_core/hash"

if defined?(ActiveRecord::Base)
  require "activerecord_postgres_hstore_core/activerecord"
end

