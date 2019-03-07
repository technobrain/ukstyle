# frozen_string_literal: true

require "rails/generators/rails/scaffold/scaffold_generator"
require 'byebug'

module Ukstyle
  module Generators
    class ScaffoldGenerator < Rails::Generators::ScaffoldGenerator
      desc "このジェネレータはlib/templates/your_themeのテンプレートを使用してScaffoldGeneratorを実行します"

      
      hook_for :scaffold
      # hook_for :scaffold_controller, required: true
    end
  end
end
