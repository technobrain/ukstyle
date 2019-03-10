# frozen_string_literal: true

require "rails/generators/base"
require 'byebug'

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
      end

      def start
        require "rails/generators/erb/scaffold/scaffold_generator"
        Erb::Generators::ScaffoldGenerator.include Ukstyle::Generators::StyleHelpers
        require "rails/generators/rails/scaffold_controller/scaffold_controller_generator"
        Rails::Generators::ScaffoldControllerGenerator.start
      end

# debugger
      # hook_for :scaffold # , in: :rails
      # hook_for :resource, in: :rails

      # debugger
      # hook_for :scaffold_controller, required: true, as: :rails, as: :scaffold

      # remove_hook_for :resource_controller
      # remove_class_option :actions

      # class_option :api, type: :boolean
      # class_option :stylesheets, type: :boolean, desc: "Generate Stylesheets"
      # class_option :stylesheet_engine, desc: "Engine for Stylesheets"
      # class_option :assets, type: :boolean
      # class_option :resource_route, type: :boolean
      # class_option :scaffold_stylesheet, type: :boolean

      # def handle_skip
      #   @options = @options.merge(stylesheets: false) unless options[:assets]
      #   @options = @options.merge(stylesheet_engine: false) unless options[:stylesheets] && options[:scaffold_stylesheet]
      # end

      # hook_for :scaffold_controller, in: :rails, as: :scaffold_controller, required: true

      # hook_for :assets, in: :rails, as: :assets do |assets|
      #   invoke assets, [controller_name]
      # end

      # # hook_for :stylesheet_engine do |stylesheet_engine|
      # #   if behavior == :invoke
      # #     invoke stylesheet_engine, [controller_name]
      # #   end
      # # end

      private

      def theme_path
        Rails.root.join('lib', 'templates', options[:theme])
      end
    end
  end
end
