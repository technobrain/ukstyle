# frozen_string_literal: true

module Ukstyle
  module Generators
    class InitializerGenerator < Rails::Generators::Base
      desc "このジェネレータはconfig/initializersにuk_style.rbファイルを作成します"
      source_root File.expand_path('templates', __dir__)

      def copy_initializer_file
        dest = Rails.root.join('config', 'initializers', 'ukstyle.rb')
        copy_file 'ukstyle.rb', dest
      end
    end
  end
end
