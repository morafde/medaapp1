ruby '2.4.0'
source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.0.2'
group :development do 
   gem 'sqlite3'    #gem to use in development environment
end
group :production do 
  gem 'pg'         #gem to use in production environment
end
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'carrierwave', '~> 1.0'
gem "fog-aws" 
gem 'figaro'
gem "mini_magick"
gem "devise"
gem 'searchkick'
gem 'sendgrid'
gem 'tawk_rails'
gem 'jquery-turbolinks'
gem  'bootstrap-sass'
gem 'jquery-datatables-rails', '~> 3.4.0'
gem 'autoprefixer-rails'
gem 'execjs'
gem "bootstrap-table-rails"
gem 'omniauth-facebook'