require "simple_form"
require "rails_admin_dropzone/engine"

module RailsAdminDropzone
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class Dropzone < Base
        RailsAdmin::Config::Actions.register(self)
        register_instance_option :member do
          true
        end

        register_instance_option :link_icon do
          'icon-upload'
        end

        register_instance_option :http_methods do
          [:get, :post]
        end

        register_instance_option :controller do
          Proc.new do
            @response = {}

            if request.post?
              @object = @abstract_model.model.find(params[:id])
              @params = params[@abstract_model.param_key]

              if @params.present?
                @params[:second_attr].each do |image|
                  if @object.create_associated_image(image)
                    render json: { message: 'success', fileID: '1' }, status: 200
                  else
                    render json: { error: @object.dropzone_association.errors.full_messages.join(',')}, status: 400
                  end
                end
              end

            end
          end
        end

      end
    end
  end
end
