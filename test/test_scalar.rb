# frozen_string_literal: true

require 'test_helper'

class TestScalar < Minitest::Test
  def setup
    @config = Scalar::Config.instance

    @config.set_defaults!
  end

  def test_default_values
    assert_equal(Scalar::Config::DEFAULT_CONFIGURATION, @config.configuration)
    assert_equal(Scalar::Config::DEFAULT_LIBRARY_URL, @config.library_url)
    assert_equal(Scalar::Config::DEFAULT_PAGE_TITLE, @config.page_title)
    assert_equal(Scalar::Config::DEFAULT_SPECIFICATION, @config.specification)
  end

  def test_setup_allows_to_change_config
    Scalar.setup do |config|
      config.configuration = { theme: 'purple' }
      config.library_url = 'https://scalar.io/latest'
      config.page_title = 'Test API Reference'
      config.specification = 'https://scalar.io/api/reference'
    end

    assert_equal({ theme: 'purple' }, @config.configuration)
    assert_equal('https://scalar.io/latest', @config.library_url)
    assert_equal('Test API Reference', @config.page_title)
    assert_equal('https://scalar.io/api/reference', @config.specification)
  end
end
