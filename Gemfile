source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc',          group: :doc, require: false

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/jonleighton/spring
gem 'spring',        group: :development

gem 'sorcery', '~> 0.8.5'
gem 'simple_form', '~> 3.0.1'
gem 'nested_form'
gem 'figaro', '~> 1.0.0.rc1', github: 'laserlemon/figaro'
gem 'compass-rails', '~> 2.0.0.pre', github: "Compass/compass-rails" #, branch: "rails4-hack" #ref: "1749c06f15dc4b058427e7969810457213647fb8"
gem 'rails_bootstrap_helper', "~> 1.0.1", github: "olimart/rails_bootstrap_helper", branch: "bs3.1"
gem 'tabs_on_rails', "~> 2.1.1"
gem 'whenever', require: false
gem 'kaminari-bootstrap'
gem 'six'
gem 'amazon-ecs'
#gem 'paperclip'
#gem 'paperclip-googledrive'
gem 'holder_rails'
gem 'pg_search'

group :development, :test do
  gem 'faker', '1.0.1'
  gem 'hirb'
end

group :development do
	gem 'capistrano', '~> 2.15.0'
  gem 'capistrano-ext', '~> 1.2.1'
  gem 'letter_opener'
  gem 'better_errors'
  gem 'thin'
  #gem 'rack-mini-profiler'
end

group :production do
  gem 'exception_notification', '~> 4.0.0'
  gem 'unicorn'
  gem 'rails_12factor'
end
