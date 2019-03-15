# frozen_string_literal: true

require "rails/generators/model_helpers"

module Ukstyle
  module Generators
    class ModelGenerator < Rails::Generators::NamedBase # :nodoc:
      include Rails::Generators::ModelHelpers
      argument :attributes, type: :array, default: [], banner: "field[:type][:index] field[:type][:index]"

      # class_option :orm, banner: "NAME", type: :string, default: :active_record, # required: true,
      #                    desc: "ORM to generate the model"
      hook_for :orm, required: true, desc: "ORM to be invoked"
    end
  end
end