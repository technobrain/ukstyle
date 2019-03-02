install_template_path = File.expand_path("../../install/template.rb", __dir__).freeze
bin_path = ENV["BUNDLE_BIN"] || "./bin"

namespace :ukstyle do
  desc "Install Uikit in this application"
  task install: [:check_yarn] do
    ENV['LOCATION'] = install_template_path
    if Rails::VERSION::MAJOR >= 5
      # exec "#{RbConfig.ruby} #{bin_path}/rails app:template LOCATION=#{install_template_path}"
      Rake::Task['app:template'].invoke
    else
      Rake::Task['rails:template'].invoke
    end
  end
end