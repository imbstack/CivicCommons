module Showoff
  module Generators
    class InstallGenerator < Rails::Generators::Base


      def install_showoff
        empty_directory 'app/views/mockups/basic'
      end


    end
  end
end
