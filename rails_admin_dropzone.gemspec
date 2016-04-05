$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_dropzone/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_dropzone"
  s.version     = RailsAdminDropzone::VERSION
  s.authors     = ["Luiz Picolo"]
  s.email       = ["luizpicolo@gmail.com"]
  s.homepage    = "http://www.luizpicolo.com.br"
  s.summary     = "Easy to use integration of drag&drop files upload via dropzone.js for ActiveAdmin"
  s.description = s.summary

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "dropzonejs-rails", "~> 0.4.16"
  s.add_dependency "simple_form"
end
