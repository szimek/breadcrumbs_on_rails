#
# = Breadcrumbs On Rails
#
# A simple Ruby on Rails plugin for creating and managing a breadcrumb navigation.
#
#
# Category::    Rails
# Package::     BreadcrumbsOnRails
# Author::      Simone Carletti <weppos@weppos.net>
# License::     MIT License
#
#--
#
#++

module BreadcrumbsOnRails
  module Config
    mattr_accessor :link_to_current
    @@link_to_current = false

    mattr_accessor :separator
    @@separator = " &raquo; "

    mattr_accessor :tag
    @@tag = nil

    def self.setup
      yield self
    end
  end
end

require 'breadcrumbs_on_rails/controller_mixin'
require 'breadcrumbs_on_rails/breadcrumbs'
require 'breadcrumbs_on_rails/version'
require 'breadcrumbs_on_rails/rails'
