# frozen_string_literal: true

require 'rails/generators/base'
require 'ukstyle/generators/style_helpers'
require 'byebug'

module Ukstyle
  module Generators
    class ScaffoldGenerator < Rails::Generators::NamedBase # :nodoc:

      desc "このジェネレータはlib/templates/your_themeのテンプレートを使用してScaffoldGeneratorを実行します"

      class_option :theme, type: :string


      def initialize(*args)
        super
        @args = args
        
        return unless options[:theme]
        Rails::Generators.templates_path.unshift(theme_path)
      end

      def start
        require "rails/generators/erb/scaffold/scaffold_generator"
        Erb::Generators::ScaffoldGenerator.include Ukstyle::Generators::StyleHelpers
        require "rails/generators/rails/scaffold/scaffold_generator"
        Rails::Generators::ScaffoldGenerator.start
      end

      private

      def theme_path
        Rails.root.join('lib', 'templates', options[:theme])
      end
    end
  end
end
