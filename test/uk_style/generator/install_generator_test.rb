# frozen_string_literal: true

require 'test_helper'

module Ukstyle
  module Generators
    class InstallGeneratorTest < Rails::Generators::TestCase
      tests Ukstyle::Generators::InstallGenerator
      destination File.expand_path(Rails.root)

      setup do
        FileUtils.remove_file initializer_file, force: true
      end

      def initializer_file
        @initializer_file ||= Rails.root.join('config', 'initializers', 'ukstyle.rb')
      end

      def example_scss_file
        @example_scss_file ||= Rails.root.join('app', 'assets', 'stylesheets', 'example-theme.scss')
      end

      # test 'create an initializer file' do
      #   run_generator
      #   assert_file initializer_file
      #   assert_file example_scss_file
      # end
    end
  end
end

