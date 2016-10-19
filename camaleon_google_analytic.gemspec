$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'camaleon_google_analytic/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = 'camaleon_google_analytic'
  s.version = CamaleonGoogleAnalytic::VERSION
  s.authors = ['raulanatol']
  s.email = ['raul@natol.es']
  s.homepage = 'http://camaleon.tuzitio.com/store/plugins/9'
  s.summary = 'Google analytics plugin'
  s.description = 'Plugin to enable google analytics'
  s.license = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '>= 4.2'

  s.add_development_dependency 'sqlite3', '~> 1.3'
end
