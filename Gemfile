gem 'dotenv-rails', :github => "bkeepers/dotenv", :require => 'dotenv/rails-now'
source 'https://rubygems.org'
ruby '2.6.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.5'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 5.3'
# gem 'mini_racer', platforms: :ruby
gem 'rails_12factor', group: :production

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'autoprefixer-rails'
gem 'aws-sdk-v1'
gem 'aws-sdk'
gem 'counter_culture', '~>1.8'
gem 'devise'
gem 'font-awesome-rails'
gem 'geocoder'
gem 'kaminari'
gem 'mini_magick'
gem 'puma_worker_killer'
gem 'rack-cors', :require => 'rack/cors'
gem 'sitemap_generator'

group :production do
  gem 'aws-sdk-s3'
  gem 'rmagick'
  gem 'fog-aws'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma', require: false
  gem 'capistrano-secrets-yml'
  # gem 'capistrano3-unicorn', :git => 'git@github.com:noppefoxwolf/capistrano3-unicorn.git'
  gem 'capistrano-rbenv', require: false
  gem 'capistrano-rbenv-vars'
  gem 'capistrano-faster-assets'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  # Adds support for Capybara system testing and selenium driver
end
