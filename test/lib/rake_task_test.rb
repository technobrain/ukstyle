require 'test_helper'
require "rails"

class RakeTaskTest < ActiveSupport::TestCase
  setup do
    Rails.application.load_tasks

    FileUtils.remove_file initializer_file, force: true
  end

  def test_app_path
    File.expand_path("../dummy", __dir__)
  end

  def initializer_file
    @initializer_file ||= Rails.root.join('config', 'initializers', 'ukstyle.rb')
  end    

  test 'rake tasks' do
    output = Dir.chdir(test_app_path) { `rake -T` }
    assert_includes output, 'ukstyle:install'
  end

  test 'copy initializers file' do
    Rake::Task['ukstyle:install'].invoke 
    assert FileTest.exist? initializer_file
  end

end