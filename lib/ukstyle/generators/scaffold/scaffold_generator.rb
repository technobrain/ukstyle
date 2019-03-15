# frozen_string_literal: true

require 'ukstyle/generators/style_helpers'
require "rails/generators/erb"
require "ukstyle/generators/resource/resource_generator"

module Ukstyle
  module Generators
    class ScaffoldGenerator < ResourceGenerator # Rails::Generators::NamedBase # :nodoc:

      desc "このジェネレータはlib/templates/your_themeのテンプレートを使用してScaffoldGeneratorを実行します"

      hook_for :scaffold_controller
    end
  end
end
