module Ukstyle
  class Engine < ::Rails::Engine
    config.generators do |g|
      g.template_engine :erb
      g.orm :active_record
      g.assets false
      g.helper false
      g.scaffold_stylesheet false
      # g.template_engine :all
      # g.fallbacks[:all] = :erb
      # g.test_framework :rspec,
      #                  controller_specs: false,
      #                  view_specs: false,
      #                  routing_specs: false,
      #                  helper_specs: false

      # g.test_framework :minitest, spec: false, fixture: true
      # g.system_tests nil
      # g.fallbacks[:minitest] = :rspec
      # g.templates.unshift File::expand_path('../../lib/templates/theme', __dir__)
    end
  end
end
