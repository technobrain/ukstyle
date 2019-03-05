# frozen_string_literal: true

module Ukstyle
  module Generators
    class BasicGenerator < Rails::Generators::NamedBase
      desc "このジェネレータはapp/views/layoutsにレイアウトファイルを作成します"
      source_root File.expand_path('templates', __dir__)

      def copy_templates
        dest_erb = Rails.root.join('lib', 'templates', file_name, 'erb', 'scaffold')
        dest_scaffold_controller = Rails.root.join('lib', 'templates', file_name, 'rails', 'scaffold_controller')

        directory 'erb/scaffold', "#{dest_erb}"
        directory 'rails/scaffold_controller', dest_scaffold_controller
      end
    end
  end
end
