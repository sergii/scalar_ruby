# frozen_string_literal: true

require 'test_helper'

class TestScalar < Minitest::Test
  def setup
    @config = Scalar::Config.instance

    @config.set_defaults!
  end

  def test_setup_allows_to_change_config
    assert(Scalar::Config::DEFAULT_CONFIGURATION, @config.configuration)
    assert(Scalar::Config::DEFAULT_LIBRARY_URL, @config.library_url)
    assert(Scalar::Config::DEFAULT_PAGE_TITLE, @config.page_title)
    assert(Scalar::Config::DEFAULT_SPECIFICATION, @config.specification)

    Scalar.setup do |config|
      config.configuration = { theme: 'purple' }
      config.library_url = 'https://scalar.io/latest'
      config.page_title = 'Test API Reference'
      config.specification = 'https://scalar.io/api/reference'
    end

    assert({ theme: 'purple' }, @config.configuration)
    assert('https://scalar.io/latest', @config.library_url)
    assert('Test API Reference', @config.page_title)
    assert('https://scalar.io/api/reference', @config.specification)
  end
end
