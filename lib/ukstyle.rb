# require "ukstyle/railtie"
require "ukstyle/engine"

require 'rails/generators'

require 'ukstyle/generators/initializer_generator'
require 'ukstyle/generators/layout_generator'
require 'ukstyle/generators/views_generator'
require 'ukstyle/generators/theme_generator'
require 'ukstyle/generators/style_helpers'
require 'ukstyle/generators/model/model_generator'
require 'ukstyle/generators/scaffold/scaffold_generator'
require 'ukstyle/generators/scaffold_controller/scaffold_controller_generator'

module Ukstyle
  # Your code goes here...
  Rails::Generators::NamedBase.include Generators::StyleHelpers
end

