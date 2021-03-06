# frozen_string_literal: true

require 'test_helper'

module Ukstyle
  module Generators
    class ViewsGeneratorTest < Rails::Generators::TestCase
      tests Ukstyle::Generators::ViewsGenerator
      destination File.expand_path(Rails.root)

      setup do
        FileUtils.rm_rf dest_erb
        FileUtils.rm_rf dest_scaffold_controller
      end

      teardown do
        # FileUtils.remove_file layout
        # FileUtils.rm_rf shared_dir
      end

      def dest_erb
        @dest_erb ||= Rails.root.join('lib', 'templates', 'erb', 'scaffold')
      end

      def dest_scaffold_controller
        @dest_scaffold_controller ||= Rails.root.join('lib', 'templates', 'rails', 'scaffold_controller')
      end

      test 'copy templates' do
        run_generator

        # run_generator [file_name]
        assert_file dest_erb
        files = %w[index show new edit _form]
        files.each do |file|
          assert_file "#{dest_erb}/#{file}.html.erb"
        end

        assert_file dest_scaffold_controller
      end
    end
  end
end

