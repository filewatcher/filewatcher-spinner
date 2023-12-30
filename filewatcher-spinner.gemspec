# frozen_string_literal: true

require_relative 'lib/filewatcher/spinner/version'

Gem::Specification.new do |spec|
  spec.name        = 'filewatcher-spinner'
  spec.version     = Filewatcher::Spinner::VERSION
  spec.authors     = ['Alexander Popov']
  spec.email       = ['alex.wayfer@gmail.com']

  spec.summary     = 'An ASCII spinner in console for Filewatcher'
  spec.description = <<~DESC
    An ASCII spinner in console for Filewatcher.
  DESC
  spec.license = 'MIT'

  github_uri = "https://github.com/filewatcher/#{spec.name}"

  spec.homepage = github_uri

  spec.metadata = {
    'bug_tracker_uri' => "#{github_uri}/issues",
    'changelog_uri' => "#{github_uri}/blob/v#{spec.version}/CHANGELOG.md",
    'documentation_uri' => "http://www.rubydoc.info/gems/#{spec.name}/#{spec.version}",
    'homepage_uri' => spec.homepage,
    'rubygems_mfa_required' => 'true',
    'source_code_uri' => github_uri,
    'wiki_uri' => "#{github_uri}/wiki"
  }

  spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

  spec.required_ruby_version = '>= 3.0', '< 4'

  spec.add_runtime_dependency 'filewatcher', '~> 2.0'
end
