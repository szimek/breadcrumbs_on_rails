$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH.unshift File.dirname(__FILE__)

require 'test/unit'
require 'rails/all'
require 'mocha'

require 'breadcrumbs_on_rails'
