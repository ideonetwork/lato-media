# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'lato_media/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'lato_media'
  s.version     = LatoMedia::VERSION
  s.authors     = ['Ideonetwork']
  s.email       = ['info@ideonetwork.it']
  s.homepage    = 'http://ideonetwork.it/'
  s.summary     = 'Lato media module'
  s.description = 'Lato is a modular management system for Rails'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  # Dependencies:

  s.add_runtime_dependency 'rails', '>= 5.1.0'
  s.add_runtime_dependency 'lato_core', '>= 2.1.0'

  # attachments management
  # doc: https://github.com/thoughtbot/paperclip
  s.add_runtime_dependency 'paperclip', '>= 5.2.1'

  # attachments optimizer
  # doc: https://github.com/janfoeh/paperclip-optimizer
  s.add_runtime_dependency 'paperclip-optimizer'

  # Dev dependencies:

  s.add_development_dependency 'sqlite3'

end
