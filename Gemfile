source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0.beta3'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.21'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.2.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.1', require: false

gem 'sorcery', '~> 0.13.0'
gem 'simple_form', '~> 4.1'
gem 'nested_form'
gem 'figaro', '~> 1.1.1', github: 'laserlemon/figaro'
gem 'rails_bootstrap_helper', "~> 1.0.1", github: "olimart/rails_bootstrap_helper", branch: "bs3.1"
gem 'tabs_on_rails', "~> 3.0"
gem 'whenever', require: false
gem 'kaminari-bootstrap'
gem 'six'
gem 'amazon-ecs'
#gem 'paperclip'
#gem 'paperclip-googledrive'
gem 'holder_rails'
gem 'pg_search', '~> 2.1.2'
gem 'nokogiri', '~> 1.10'
gem 'sprockets', '~> 4.0.0.beta8' # for Heroku build

group :development, :test do
  gem 'faker', '1.0.1'
  gem 'hirb'
  gem 'byebug'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener'
  gem 'better_errors'
  # gem 'rack-mini-profiler'
end

group :test do
  gem 'minitest-reporters'
  gem 'shoulda', '~> 3.5'
  gem 'shoulda-matchers', '~> 2.0'
  gem 'rails-controller-testing'
end

group :production do
  gem 'exception_notification', '~> 4.0.0'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
