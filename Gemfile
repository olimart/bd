source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 6.1.0", ">= 6.1.4.1"
# Use postgresql as the database for Active Record
gem "pg"
# Use Puma as the app server
gem "puma", "< 6"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# Use CoffeeScript for .js.coffee assets and views
gem "coffee-rails", "~> 4.2.2"
gem "webpacker", "~> 5.0"

# Use jquery as the JavaScript library
gem "jquery-rails"
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem "turbolinks", "~> 5.1"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"

# Use Active Storage variant
# gem "image_processing", "~> 1.2"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false

gem "simple_form", "~> 5.0"
gem "nested_form"
gem "figaro", "~> 1.2", github: "laserlemon/figaro"
gem "rails_bootstrap_helper", "~> 1.0.1", github: "olimart/rails_bootstrap_helper", branch: "bs3.1"
gem "tabs_on_rails", "~> 3.0"
gem "whenever", require: false
gem "kaminari-bootstrap"
gem "six"
gem "amazon-ecs"
gem "holder_rails"
gem "pg_search", "~> 2.3"
gem "nokogiri"
gem "queenbee"

group :development, :test do
  gem "ffaker"
  gem "hirb"
  gem "byebug"
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "listen", "~> 3.3"
  gem "letter_opener"
  gem "better_errors"
  # gem "rack-mini-profiler"
end

group :test do
  gem "minitest-reporters"
  gem "shoulda-context", "2.0"
  gem "shoulda-matchers", "~> 4.0"
  gem "rails-controller-testing"
end

group :production do
  gem "exception_notification", "~> 4.4"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
