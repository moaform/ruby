$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rubocop/moaform/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-moaform'
  spec.summary = 'Custom code style checking for Moaform.'
  spec.description = <<-EOF
    A plugin for RuboCop code style enforcing & linting tool. It includes Rubocop configuration
    used at Moaform and a few custom rules that have cause internal issues at Moaform but are not
    supported by core Rubocop.
  EOF
  spec.authors = ['Moaform DevOps']
  spec.email = ['dev@moaform.com']
  spec.homepage = 'https://github.com/moaform/ruby'
  spec.license = 'MIT'
  spec.version = RuboCop::Moaform::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.5'

  spec.require_paths = ['lib']
  spec.files = Dir[
    '{config,lib,spec}/**/*',
    '*.md',
    '*.gemspec',
    'Gemfile',
  ]

  spec.add_dependency('rubocop', '~> 0.77.0')
  spec.add_dependency('rubocop-performance', '~> 1.5.0')
  spec.add_dependency('rubocop-rails', '~> 2.3.2')
  spec.add_dependency('rubocop-rspec', '~> 1.30.0')
  spec.add_development_dependency('rspec', '~> 3.5')
end
