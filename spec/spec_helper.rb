# frozen_string_literal: true

require 'pry-byebug' unless RUBY_PLATFORM == 'java'

require 'simplecov'
SimpleCov.start

if ENV['CODECOV_TOKEN']
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require_relative '../lib/filewatcher/spinner'
