require 'test_helper'

module TestApp
  class Application < Rails::Application
  end
end

class SimpleBuilderTest < ActionView::TestCase
  class TestTemplate
    include ActionView::Helpers::TagHelper
    include ActionView::Helpers::UrlHelper
  end

  def setup
    @template = TestTemplate.new
  end

  def test_render_should_be_implemented
    assert_nothing_raised { simplebuilder(@template, []).render }
  end


  def test_render_with_0_elements
    assert_equal("", simplebuilder(@template, []).render)
  end

  def test_render_with_0_elements_and_separator
    assert_equal("", simplebuilder(@template, [], :separator => "-").render)
  end


  def test_render_with_1_element
    @template.expects(:current_page?).times(1).returns(false)
    assert_dom_equal("<a href=\"/element/1\">Element 1</a>",
                     simplebuilder(@template, generate_elements(1)).render)
  end

  def test_render_with_1_element_and_separator
    @template.expects(:current_page?).times(1).returns(false)
    assert_dom_equal("<a href=\"/element/1\">Element 1</a>",
                     simplebuilder(@template, generate_elements(1), :separator => "-").render)
  end


  def test_render
    @template.expects(:current_page?).times(2).returns(false)
    assert_dom_equal("<a href=\"/element/1\">Element 1</a> &raquo; <a href=\"/element/2\">Element 2</a>",
                     simplebuilder(@template, generate_elements(2)).render)
  end

  def test_render_with_separator_from_config
    swap BreadcrumbsOnRails::Config, :separator => " - " do
        @template.expects(:current_page?).times(2).returns(false)
    assert_dom_equal("<a href=\"/element/1\">Element 1</a> - <a href=\"/element/2\">Element 2</a>",
                     simplebuilder(@template, generate_elements(2)).render)
    end
  end

  def test_render_with_separator_from_options
    @template.expects(:current_page?).times(2).returns(false)
    assert_dom_equal("<a href=\"/element/1\">Element 1</a> - <a href=\"/element/2\">Element 2</a>",
                     simplebuilder(@template, generate_elements(2), :separator => " - ").render)
  end

  def test_render_with_current_page_should_not_render_link
    @template.expects(:current_page?).times(2).returns(false, true)
    assert_dom_equal("<a href=\"/element/1\">Element 1</a> &raquo; Element 2",
                     simplebuilder(@template, generate_elements(2)).render)
  end

  def test_render_with_current_page_should_render_link
    swap BreadcrumbsOnRails::Config, :link_to_current => true do
      @template.expects(:current_page?).times(0)
      assert_dom_equal("<a href=\"/element/1\">Element 1</a> &raquo; <a href=\"/element/2\">Element 2</a>",
                       simplebuilder(@template, generate_elements(2)).render)
    end
  end


  protected

    def simplebuilder(*args)
      BreadcrumbsOnRails::Breadcrumbs::SimpleBuilder.new(*args)
    end

    def generate_elements(number)
      (1..number).collect do |index|
        BreadcrumbsOnRails::Breadcrumbs::Element.new("Element #{index}", "/element/#{index}")
      end
    end
end
