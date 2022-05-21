# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in new_gem.gemspec
gemspec

gem "rake", "~> 13.0"

gem "standard", "~> 1.3", require: false
gem "yard", "~> 0.9", require: false
gem "yard-coderay", require: false
gem "redcarpet", require: false

group :development do
  gem "solargraph", require: false
end

group :development, :test do
  gem "debug"
  gem "rspec", "~> 3.0"
end
