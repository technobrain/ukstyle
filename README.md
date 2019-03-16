# Ukstyle
Short description and motivation.

## Usage
How to use my plugin.

### Install uikit and generate initializer file

Install [Uikit](https://getuikit.com/) css framework as node module.

There's a install task that install UIkit.  
UIkit is a lightweight and modular front-end framework for developing fast and powerful web interfaces.  
SEE: https://getuikit.com/

```bash
$ rails ukstyle:install
```
Then rename application.css to application.scss in app/assets/stylesheets directory,
and generate following scss theme file into app/assets/stylesheets directory.  

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

### Generate scaffold template

To create custom template files, execute generator ukstyle:views.  
Then generate default views into /lib/template directory.

```bash
$ rails generate ukstyle:views
```

### Custom themes

You can generate templates with sub directory that name as theme.

```bash
$ rails generate ukstyle:theme your_theme
```
Then generate templates into /lib/template/your_theme/.
And you can customize as you like.

### Using customized theme

It's simple.  

```bash
$ rails generate ukstyle:scaffold Admin::Product code:string name:string specs:text --theme=your_theme
```
#### Options
 --theme=your_theme  
 --skip_layout

### Generate admin layout

Generate standard 2 column layout with navigation bar.

```bash
$ rails generate ukstyle:layout:init
```
Then generate view/layout/admin.html.erb

If you want another namespace, use option --namespace=<NAMESPACE>

```bash
$ rails generate ukstyle:layout:init --namespace=doc
```

### TODO: Generate nav menu on side bar.

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
 

## TODO: Installation
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
