# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "rails_admin_dropzone/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_dropzone"
  s.version     = RailsAdminDropzone::VERSION
  s.authors     = ["Luiz Picolo"]
  s.email       = ["luizpicolo@gmail.com"]
  s.homepage    = "https://github.com/luizpicolo/rails_admin_dropzone"
  s.summary     = "RailsAdmin dropzone.js"
  s.description = "Easy to use integration of drag&drop files upload via dropzone.js for ActiveAdmin"
  s.licenses    = ['MIT-LICENSE']

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "simple_form", "~> 3.2"
  s.add_dependency "jquery-rails", [">= 3.0", "< 5"]
  s.add_dependency "dropzonejs-rails", "~> 0.4.16"

  s.add_development_dependency "rails", [">= 4.0", "< 5"]
  s.add_development_dependency "bundler", "~> 1.11"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.0"
end
