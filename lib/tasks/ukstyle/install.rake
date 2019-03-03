install_template_path = File.expand_path("../../install/template.rb", __dir__).freeze
bin_path = ENV["BUNDLE_BIN"] || "./bin"

namespace :ukstyle do
  desc "Install Uikit in this application"
  task :install do
    ENV['LOCATION'] = install_template_path
    if Rails::VERSION::MAJOR >= 5
      Rake::Task['app:template'].invoke
    else
      Rake::Task['rails:template'].invoke
    end
  end
end