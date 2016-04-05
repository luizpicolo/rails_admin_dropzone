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
  s.summary     = "RailsAdmin dropzone.js"
  s.description = "Easy to use integration of drag&drop files upload via dropzone.js for ActiveAdmin"
  s.files       = `git ls-files -z`.split("\x0")
  s.licenses    = %w(MIT)

  s.add_runtime_dependency 'simple_form', '~> 0'
  s.add_runtime_dependency 'rails', '~> 4.2', '>= 4.2.4'
  s.add_dependency "jquery-rails", [">= 3.0", "< 5"]
  s.add_dependency "dropzonejs-rails", "~> 0.4.16"
end
