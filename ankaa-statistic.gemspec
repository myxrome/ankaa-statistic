$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'ankaa-statistic/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'ankaa-statistic'
  s.version     = AnkaaStatistic::VERSION
  s.authors     = 'whiteboxteam'
  s.email       = 'support@whiteboxteam.com'
  s.homepage    = ''
  s.summary     = ''
  s.description = ''
  s.license     = 'MIT'

  s.files = Dir['{app,db,lib}/**/*', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails'

  s.add_development_dependency 'pg'
end
