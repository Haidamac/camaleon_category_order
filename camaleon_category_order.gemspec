$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "camaleon_category_order/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "camaleon_category_order"
  s.version     = CamaleonCategoryOrder::VERSION
  s.authors     = ["superchel"]
  s.email       = ["for.oleg.mozolev@gmail.com"]
  s.homepage    = ""
  s.summary     = ": Summary of CamaleonCategoryOrder."
  s.description = ": Description of CamaleonCategoryOrder."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"
  s.add_dependency 'camaleon_cms' , '>=2.4.5'

  s.add_development_dependency "sqlite3"
end
