$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "paytm_subwallet/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "paytm_subwallet"
  s.version     = PaytmSubwallet::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of PaytmSubwallet."
  s.description = "TODO: Description of PaytmSubwallet."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
