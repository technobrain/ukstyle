# frozen_string_literal: true

require "rails/generators/rails/scaffold/scaffold_generator"
require 'byebug'

module Ukstyle
  module Generators
    class ScaffoldGenerator < Rails::Generators::ScaffoldGenerator
      desc "このジェネレータはlib/templates/your_themeのテンプレートを使用してScaffoldGeneratorを実行します"

      class_option :theme, type: :string

      def initialize(*args)
        super

        return unless options[:theme]
        
        Rails::Generators.templates_path.unshift(theme_path)
      end

      hook_for :scaffold
      # hook_for :scaffold_controller, required: true

      private

      def theme_path
        Rails.root.join('lib', 'templates', options[:theme])
      end
    end
  end
end
