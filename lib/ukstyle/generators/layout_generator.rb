# frozen_string_literal: true

module Ukstyle
  module Generators
    class LayoutGenerator < Rails::Generators::NamedBase
      desc "このジェネレータはapp/views/layoutsにレイアウトファイルを作成します"
      source_root File.expand_path('templates/views/erb/', __dir__)

      def copy_layout_file
        dest = Rails.root.join('app', 'views', 'layouts', "#{file_name}.html.erb")
        copy_file 'layouts/template.html.erb', dest
      end

      def copy_side_bar_file
        dest = Rails.root.join('app', 'views', 'shared', file_name)
        directory 'shared/namespace', dest
      end

      def copy_partial_file
        dest = Rails.root.join('app', 'views', 'shared')
        files = %w[footer header notice]
        files.each do |file|
          copy_file "shared/_#{file}.html.erb", "#{dest}/_#{file}.html.erb"
        end
      end
    end
  end
end
