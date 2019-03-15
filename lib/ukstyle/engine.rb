require 'byebug'

module Ukstyle
  class Engine < ::Rails::Engine

    # OK
    Rails::Generators.options.merge!(ukstyle: { orm: :active_record })

  end
end
