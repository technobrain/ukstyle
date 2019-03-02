# Copy Initializers file
copy_file "#{__dir__}/config/initializers/ukstyle.rb", 'config/initializers/ukstyle.rb'

# UIkit install
say 'Installing UIkit'
run 'yarn add uikit'
say 'UIkit successfully installed 🎉 🍰', :green

# Stylesheets
copy_file "#{__dir__}/app/assets/stylesheets/application.scss", 'app/assets/stylesheets/application.scss'
copy_file "#{__dir__}/app/assets/stylesheets/ukstyle-theme.scss", 'app/assets/stylesheets/ukstyle-theme.scss'
directory "#{__dir__}/app/assets/stylesheets/example", 'app/assets/stylesheets/example'

say 'Remove application.css?'
remove_file 'app/assets/stylesheets/application.css'

say 'Inject UIkit javascript path into app/assets/javascripts/application.js'
inject_into_file 'app/assets/javascripts/application.js', after: 'require rails-ujs' do <<'JS'

//= require uikit/dist/js/uikit.min.js
//= require uikit/dist/js/uikit-icons.min.js
JS


end
