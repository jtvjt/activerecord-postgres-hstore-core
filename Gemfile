source 'http://rubygems.org'
gemspec

# putting these here because if they're in the gemspec it tries to load both of them.
# Bundler lets you choose per-platform.
group :development do
  gem 'pg', :platforms => :ruby
  gem 'activerecord-jdbc-adapter', :platforms => :jruby
  gem 'activerecord-jdbcpostgresql-adapter', :platforms => :jruby
end