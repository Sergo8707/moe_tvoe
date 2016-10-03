source 'https://rubygems.org'

# зависим от рельсов 4.2.*
gem 'rails', '~> 4.2.6'

gem 'devise', '~> 4.1.1'

# гем для перевода сообщений девайса
gem 'devise-i18n'

# гем с русскими форматами (времени и пр.)
gem 'russian'

# гем, интегрирующий bootstrap
gem 'twitter-bootstrap-rails'

# гем для поддержки jquery
gem 'jquery-rails'

# гем для загрузки картинок
gem 'carrierwave'

# гем для обработки картинок
gem 'rmagick'

# гем для работы carrierwave с хранилищем Amazon S3
gem 'fog-aws'

gem 'rails_12factor'

# в продакшен сервере heroku этот гем соединяет с базой данных Postgres
group :production do
  gem 'pg'
  gem 'uglifier', '>= 1.3.0'
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
end
