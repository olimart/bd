source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 6.1.0", ">= 6.1.4.1"
# Use postgresql as the database for Active Record
gem "pg"
# Use Puma as the app server
gem "puma", "< 6"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
# Use Sass to process CSS
gem "sassc-rails"
gem "jsbundling-rails"
gem "turbo-rails"
# Use jquery as the JavaScript library
gem "jquery-rails"
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
gem "stimulus-rails"
gem "sentry-ruby"
gem "sentry-rails"

group :development, :test do
  gem "ffaker"
  gem "hirb"
  gem "debug"
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
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
