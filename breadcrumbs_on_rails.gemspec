# -*- encoding: utf-8 -*-
require File.expand_path("../lib/breadcrumbs_on_rails/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "breadcrumbs_on_rails"
  s.version     = BreadcrumbsOnRails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Simone Carletti"]
  s.email       = ["weppos@weppos.net"]
  s.homepage    = "http://www.simonecarletti.com/code/breadcrumbs_on_rails"
  s.summary     = "A simple Ruby on Rails plugin for creating and managing a breadcrumb navigation."
  s.description = "BreadcrumbsOnRails is a simple Ruby on Rails plugin for creating and managing a breadcrumb navigation for a Rails project. It provides helpers for creating navigation elements with a flexible interface."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "breadcrumbs_on_rails"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rails", "~> 3.0.0"
  s.add_development_dependency "test-unit", "~> 2"
  s.add_development_dependency "mocha"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = "lib"
end
