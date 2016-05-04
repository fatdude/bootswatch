$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootswatch/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootswatch"
  s.version     = Bootswatch::VERSION
  s.authors     = ["fatdude"]
  s.email       = ["mark@fatdude.net"]
  s.homepage    = "http://www.bootswatch.com"
  s.summary     = "Somewhere to keep the sass versions of bootswatch"
  s.description = "Downloaded directly from the bootswatch site"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rails"
end
