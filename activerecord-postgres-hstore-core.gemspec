$:.push File.dirname(__FILE__) + '/lib'
require 'activerecord-postgres-hstore-core/version'

Gem::Specification.new do |gem|
  gem.name = %q{activerecord-postgres-hstore-core}
  gem.authors = ["Jt Gleason"]
  gem.date = %q{2012-02-29}
  gem.description = %q{Allows you to use active record with databases that already have an hstore type}
  gem.summary = "Hstore AR for Hstore DB"
  gem.email = %q{jt@twitch.tv}
  gem.homepage      = ''

  gem.add_dependency 'rails', '~> 3.0'
  gem.add_development_dependency 'rspec', '~> 2.6'
  gem.add_development_dependency 'ammeter', '~> 0.1.3'
  gem.add_development_dependency 'pg'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-rspec'


  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']
  gem.version       = ActiveRecordPostgresHstore::VERSION
end
