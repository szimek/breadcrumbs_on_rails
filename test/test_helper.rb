$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH.unshift File.dirname(__FILE__)

require 'test/unit'
require 'mocha'
require 'rails/all'

require 'breadcrumbs_on_rails'
