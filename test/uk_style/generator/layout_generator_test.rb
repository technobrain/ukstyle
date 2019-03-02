# frozen_string_literal: true

require 'test_helper'

module Ukstyle
  module Generators
    class LayoutGeneratorTest < Rails::Generators::TestCase
      tests Ukstyle::Generators::LayoutGenerator
      destination File.expand_path(Rails.root)

      setup do
        # FileUtils.remove_file initializer_file, force: true
      end

      def file_name
        @file_name ||= 'admin'
      end

      def layout
        @layout ||= Rails.root.join('app', 'views', 'layouts', "#{file_name}.html.erb")
      end

      def shared_side_bar
        @shared_dir ||= Rails.root.join('app', 'views', 'shared', file_name, '_sidebar_nav.html.erb')
      end

      test 'create an initializer file' do
        run_generator [file_name]
        assert_file layout
        assert_file shared_side_bar
      end
    end
  end
end

