module BreadcrumbsOnRails
  class Railtie < Rails::Railtie
    initializer "breadcrumbs_on_rails.initialize" do
      ActionController::Base.send(:include, BreadcrumbsOnRails::ControllerMixin)
    end
  end
end
