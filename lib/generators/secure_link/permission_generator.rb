module SecureLink
  module Generators
    class PermissionGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def generate_permission
        copy_file "permission.rb", "app/controllers/permission.rb"
      end
    end
  end
end
