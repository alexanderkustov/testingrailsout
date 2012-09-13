source 'https://rubygems.org'

gem 'rails', '3.2.7'

group :production, :staging do
  gem "pg"
end

group :development, :test do
  gem "sqlite3"
end

gem 'bcrypt-ruby', '~> 3.0.0'
gem 'gmaps4rails'
gem 'formtastic'
gem "nifty-generators", :group => :development

gem 'pg'
gem "geocoder"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'

end
gem 'jquery-rails'

gem "mocha", :group => :test
