# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{breadcrumbs_on_rails}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Simone Carletti"]
  s.date = %q{2010-09-21}
  s.description = %q{    BreadcrumbsOnRails is a simple Ruby on Rails plugin for creating and managing     a breadcrumb navigation for a Rails project.     It provides helpers for creating navigation elements with a flexible interface.
}
  s.email = %q{weppos@weppos.net}
  s.extra_rdoc_files = ["LICENSE.rdoc", "README.rdoc", "CHANGELOG.rdoc"]
  s.files = ["Rakefile", "LICENSE.rdoc", "README.rdoc", "CHANGELOG.rdoc", "breadcrumbs_on_rails.gemspec", "test/builder_test.rb", "test/test_helper.rb", "test/simple_builder_test.rb", "test/element_test.rb", "test/breadcrumbs_on_rails_test.rb", "lib/breadcrumbs_on_rails.rb", "lib/breadcrumbs_on_rails", "lib/breadcrumbs_on_rails/breadcrumbs.rb", "lib/breadcrumbs_on_rails/version.rb", "lib/breadcrumbs_on_rails/controller_mixin.rb", "lib/breadcrumbs_on_rails/rails.rb"]
  s.homepage = %q{http://www.simonecarletti.com/code/breadcrumbs_on_rails}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A simple Ruby on Rails plugin for creating and managing a breadcrumb navigation.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
