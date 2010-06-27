module Showoff
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path(File.dirname(__FILE__) + '/templates')


      def install_showoff
        empty_directory 'app/views/mockups/basic'

        copy_file 'sample_mockup.html.erb', 'app/views/mockups/sample_mockup.html.erb'
        copy_file 'alternate_layout.html.erb', 'app/views/mockups/basic/alternate_layout.html.erb'
        copy_file 'showoff.css', 'public/stylesheets/showoff.css'

      end

    end
  end
end
