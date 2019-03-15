# frozen_string_literal: true

require "rails/generators/resource_helpers"

module Ukstyle
  module Generators
    class ResourceGenerator < ModelGenerator # :nodoc:
      include Rails::Generators::ResourceHelpers

      # hook_for :resource_controller, required: true, in: :rails do |controller|
      #   invoke controller, [ controller_name, options[:actions] ]
      # end

      class_option :actions, type: :array, banner: "ACTION ACTION", default: [],
                             desc: "Actions for the resource controller"

      hook_for :resource_route, required: true, in: :rails
    end
  end
end