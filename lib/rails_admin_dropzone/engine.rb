require 'dropzonejs-rails'
require 'simple_form'
require 'jquery-rails'

module RailsAdminDropzone
  class Engine < ::Rails::Engine
    initializer 'rails_admin_dropzone_assets' do |app|
      app.config.assets.precompile += %w(
        rails_admin/rails_admin_dropzone.js
        rails_admin/rails_admin_dropzone.css
      )
    end
  end
end
