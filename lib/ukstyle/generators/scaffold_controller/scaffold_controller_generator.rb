# frozen_string_literal: true

require "rails/generators/erb"

module Ukstyle
  module Generators
    class ScaffoldControllerGenerator < Rails::Generators::NamedBase # :nodoc:

      desc "このジェネレータはlib/templates/your_themeのテンプレートを使用してScaffoldGeneratorを実行します"

      class_option :theme, type: :string

      def initialize(*args)
        super
        @args = args
        
        return unless options[:theme]
        Rails::Generators.templates_path.unshift(theme_path)

        require "rails/generators/erb/scaffold/scaffold_generator"
        Erb::Generators::ScaffoldGenerator.include Ukstyle::Generators::StyleHelpers
      end

      hook_for :scaffold_controller, required: true, in: :rails #, as: :ukstyle

      private

      def theme_path
        Rails.root.join('lib', 'templates', options[:theme])
      end
    end
  end
end
