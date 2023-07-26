# frozen_string_literal: true

source 'https://rubygems.org'

gemspec

group :development do
  ## Windows requires some additional installations:
  ## ```
  ## Installing byebug 11.1.3 with native extensions
  ## MSYS2 could not be found. Please run 'ridk install'
  ## or download and install MSYS2 manually from https://msys2.github.io/
  ## ```
  gem 'pry-byebug', '~> 3.9' unless RUBY_PLATFORM == 'java' || Gem.win_platform?

  gem 'gem_toys', '~> 0.12.1'
  gem 'toys', '~> 0.14.2'
end

group :audit do
  gem 'bundler', '~> 2.0'
  gem 'bundler-audit', '~> 0.9.0'
end

group :test do
  gem 'rspec', '~> 3.9'
  ## Don't update to 0.22 until TruffleRuby is 23:
  ## https://github.com/oracle/truffleruby/milestone/32
  ## https://github.com/oracle/truffleruby/issues/2813
  gem 'simplecov', '~> 0.21.0'
  gem 'simplecov-cobertura', '~> 2.1'
end

group :lint do
  gem 'rubocop', '~> 1.55.0'
  gem 'rubocop-performance', '~> 1.0'
  gem 'rubocop-rspec', '~> 2.0'
end
