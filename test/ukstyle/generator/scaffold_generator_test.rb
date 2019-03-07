# frozen_string_literal: true

require 'test_helper'

module Ukstyle
  module Generators
    class ScaffoldGeneratorTest < Rails::Generators::TestCase
      tests Ukstyle::Generators::ScaffoldGenerator
      destination File.expand_path(Rails.root)

      def model
        'User'
      end

      def field
        'name:string'
      end

      test 'copy templates' do
        run_generator [model, field]
      end
    end
  end
end

