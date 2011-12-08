source 'http://rubygems.org'

#
# Root
#
gem 'rails', '3.1.3'

#
# Common
#

# for foreign keys in database
gem 'foreigner'
# postgres for database
gem 'pg'

#
# Deployment
#

# Deploy with Capistrano
gem 'capistrano'
# use per application ruby and gems
gem 'rvm'


# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  # view and request testing
  gem 'capybara'
  # model factories for testing
  gem 'factory_girl_rails'
  # rspec for rails
  gem 'rspec-rails'
  # For debugging
  gem 'ruby-debug19'
end
