source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.11'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.21'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'sorcery', '~> 0.8.6'
gem 'simple_form', '~> 3.1.0'
gem 'nested_form'
gem 'figaro', '~> 1.1.1', github: 'laserlemon/figaro'
gem 'compass-rails', '~> 3.1.0', github: "Compass/compass-rails" #, branch: "rails4-hack" #ref: "1749c06f15dc4b058427e7969810457213647fb8"
gem 'rails_bootstrap_helper', "~> 1.0.1", github: "olimart/rails_bootstrap_helper", branch: "bs3.1"
gem 'tabs_on_rails', "~> 2.1.1"
gem 'whenever', require: false
gem 'kaminari-bootstrap'
gem 'six'
gem 'amazon-ecs'
#gem 'paperclip'
#gem 'paperclip-googledrive'
gem 'holder_rails'
gem 'pg_search', '~> 2.1.2'

group :development, :test do
  gem 'faker', '1.0.1'
  gem 'hirb'
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'letter_opener'
  gem 'better_errors'
  gem 'thin'
  #gem 'rack-mini-profiler'
end

group :test do
  gem 'minitest-reporters'
  gem 'shoulda', '~> 3.5'
  gem 'shoulda-matchers', '~> 2.0'
  gem 'rails-controller-testing'
end

group :production do
  gem 'exception_notification', '~> 4.0.0'
  gem 'unicorn'
  gem 'rails_12factor'
end
