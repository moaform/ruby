require 'pathname'
require 'yaml'

# Load original rubocop gem
require 'rubocop'

require 'rubocop-performance'
require 'rubocop-rails'

require 'rubocop/moaform'
require 'rubocop/moaform/inject'
require 'rubocop/moaform/version'

RuboCop::Moaform::Inject.defaults!
