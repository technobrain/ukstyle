module Ukstyle
  class Engine < ::Rails::Engine
    # Configure template path
    require 'byebug'

    config.generators.templates.unshift(
      File.expand_path('templates', __dir__)
    )
  end
end
