require "rails/generators"

module Ukstyle
  class Engine < ::Rails::Engine
    Rails::Generators.options.merge!(ukstyle: { orm: :active_record })
  end
end
