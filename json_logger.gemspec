# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |spec|
  spec.name = 'json_logger'
  spec.version = '0.0.1'
  spec.authors = ['tommymccallig']
  spec.email = ['thomas.mccallig@qstream.com']
  spec.homepage = 'https://github.com/qstream/json_logger/'
  spec.summary = 'Logs in JSON format with tagging support.'
  spec.description = 'Logs in JSON format with tagging support.'

  spec.files = Dir['lib/**/*']
  spec.required_ruby_version = '>= 2.5'
end
