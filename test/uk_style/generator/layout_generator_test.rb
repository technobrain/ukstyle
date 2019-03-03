# frozen_string_literal: true

require 'test_helper'

module Ukstyle
  module Generators
    class LayoutGeneratorTest < Rails::Generators::TestCase
      tests Ukstyle::Generators::LayoutGenerator
      destination File.expand_path(Rails.root)

      setup do
        FileUtils.remove_file layout, force: true
        FileUtils.rm_rf shared_dir
        run_generator [file_name]
      end

      teardown do
        # FileUtils.remove_file layout
        # FileUtils.rm_rf shared_dir
      end

      def file_name
        @file_name ||= 'admin'
      end

      def layout
        @layout ||= Rails.root.join('app', 'views', 'layouts', "#{file_name}.html.erb")
      end

      def shared_dir
        Rails.root.join('app', 'views', 'shared')
      end

      def sidebar_nav
        @sidebar_nav ||= File.expand_path("#{file_name}/_sidebar_nav.html.erb", shared_dir)
      end

      test 'create an initializer file' do
        # run_generator [file_name]
        assert_file layout
        assert_file sidebar_nav
      end
    end
  end
end

