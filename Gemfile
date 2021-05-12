# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.6"

gem "bootsnap", ">= 1.4.4", require: false
gem "bootstrap", "~> 4.0.0"
gem "faker", git: "https://github.com/stympy/faker.git", branch: "master"
gem "jbuilder", "~> 2.7"
gem "pg"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.3", ">= 6.1.3.1"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 5.0"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "pry-byebug"
  gem "rspec_junit_formatter"
  gem "rspec-rails", "~> 4.0.2"
  gem "rubocop-rspec"
end

group :development do
  gem "annotate", git: "https://github.com/ctran/annotate_models.git"
  gem "hirb"
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "rubocop", "~> 1.10", require: false
  gem "rubocop-rails", require: false
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "pundit-matchers", "~> 1.6.0"
  gem "rails-controller-testing"
  gem "rspec-graphql_matchers"
  gem "selenium-webdriver"
  gem "shoulda-matchers", "4.0.0.rc1"
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
