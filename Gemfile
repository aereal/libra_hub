source :rubygems

gem 'rails', '3.2.3'

gem 'jquery-rails'
gem 'pg'
gem 'slim-rails'

group :development, :test do
  gem 'capybara'
  gem 'rspec-rails', '~> 2.9'
  gem 'factory_girl_rails'
  gem 'forgery'
  gem 'spork-rails'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-bundler'

  if /darwin/i === RUBY_PLATFORM
    gem 'growl'
    gem 'rb-fsevent', require: false
  end
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'
end
