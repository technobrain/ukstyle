# frozen_string_literal: true

# Rails.application.config.generators do |g|
#   g.template_engine :erb
#   g.orm :active_record
#   g.assets false
#   g.helper false
#   g.scaffold_stylesheet false
#   # g.template_engine :all
#   # g.fallbacks[:all] = :erb
#   # g.test_framework :rspec,
#   #                  controller_specs: false,
#   #                  view_specs: false,
#   #                  routing_specs: false,
#   #                  helper_specs: false

#   # g.test_framework :minitest, spec: false, fixture: true
#   # g.system_tests nil
#   # g.fallbacks[:minitest] = :rspec
#   # g.templates.unshift File::expand_path('../../../lib/templates', __FILE__)
# end

# UikitAdminRails.configure do |config|
#   config.admin_controller_namespace = :admin
#   config.theme_entry_path = Rails.root.join('app', 'assets', 'stylesheets')
# end

# Apply UIkit alert form
# TODO append to gem
Rails.application.config.action_view.field_error_proc = proc do |html_tag, _instance_tag|
  input_forms = %w[input textarea select]
  html = html_tag
  elem = Nokogiri::HTML::DocumentFragment.parse(html_tag).css 'label'
  if elem.first
    elem.first.attributes['class'].value += ' uk-text-danger'
    html = elem.to_html.html_safe
  else
    input_forms.each do |form|
      elem = Nokogiri::HTML::DocumentFragment.parse(html_tag).css(form)
      if elem.first
        elem.first.attributes['class'].value += ' uk-form-danger'
        html = elem.to_html.html_safe
      end
    end
  end
  html
end
