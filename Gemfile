source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bourbon'
gem 'haml'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jsonapi-rails'
gem 'mini_racer', platforms: :ruby
gem 'pg', '~> 0.18.4'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'
gem 'react_on_rails', '~> 10.0.0'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'

group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'scss_lint', require: false
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'rspec-json_expectations'
  gem 'rspec-rails', '~> 3.5'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', '~> 3.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
