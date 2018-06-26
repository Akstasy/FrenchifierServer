source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Postgresql
gem 'pg', '~> 0.18'
# Env Variables
gem 'figaro'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# JWT authentification
gem 'jwt'
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
# Files upload
gem 'carrierwave'
# Push notifs
gem 'rpush'
# pagination Query
gem 'kaminari'
# Progress-bar in terminal
gem 'ruby-progressbar'
# rails batch import opti
gem 'activerecord-import'
# prettify rails c
gem 'hirb'
# Crontab management
gem 'whenever'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Use Puma as the app server
  gem 'puma', '~> 3.7'
end

#Backend for asynchronous jobs
gem 'sidekiq', group: :production

gem 'simple_command'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'rb-readline'
gem 'time_diff'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
