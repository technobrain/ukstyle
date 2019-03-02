# Ukstyle
Short description and motivation.

## Usage
How to use my plugin.

### Install uikit and generate initializer file

Install [Uikit](https://getuikit.com/) css framework as node module.

```bash
$ rails ukstyle:install
```
Then generate initializer file to config/initializers/ukstyle.rb,  
Rename application.css to application.scss in app/assets/stylesheets directory,
generate scss theme file to app/assets/stylesheets directory.  

```scss
# application.scss

@import 'ukstyle-theme.scss';
```

And append following code to app/assets/javascripts/application.js

```
...
//= require uikit.min.js
//= require uikit-icons.min.js
...
```
### Generate admin layout

Generate standard 2 column layout with navigation bar.

```bash
$ rails generate ukstyle:layout
```
Then generate view/layout/admin.html.erb

If you want another namespace, use option --namespace=<NAMESPACE>

```bash
$ rails generate ukstyle:layout --namespace=doc
```

### Generate nav menu on side bar.

Initialize navmenu.

```bash
$ rails generate ukstyle:navmenu:init
```
Add navmenu.

ukstyle:navmenu:add <Layout> <Model>

```bash
$ rails generate ukstyle:navmenu:add admin Product
```
Then navigation was appended to side bar as admin_products_path

### Generate Scaffold with uikit3 style template

Same as original generate command.

```bash
$ rails generate scaffold Admin::Product code:string name:string specs:text
``` 

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'ukstyle'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install ukstyle
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
