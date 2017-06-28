$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wonderpay/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wonderpay"
  s.version     = Wonderpay::VERSION
  s.authors     = ["Luis Ceron"]
  s.email       = ["luismarcoceron@gmail.com"]
  s.homepage    = ""
  s.summary     = ": Summary of Wonderpay."
  s.description = ": Description of Wonderpay."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"
  s.add_dependency "iugu"

  s.add_development_dependency "sqlite3"
end
