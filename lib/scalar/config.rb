# frozen_string_literal: true

require 'json'
require 'singleton'

module Scalar
  class Config
    include Singleton

    DEFAULT_CONFIGURATION = {}.freeze
    DEFAULT_LIBRARY_URL = 'https://cdn.jsdelivr.net/npm/@scalar/api-reference'
    DEFAULT_PAGE_TITLE = 'API Reference'
    DEFAULT_SPECIFICATION = 'https://cdn.jsdelivr.net/npm/@scalar/galaxy/dist/latest.yaml'

    attr_accessor :configuration,
                  :library_url,
                  :page_title,
                  :specification

    def initialize
      set_defaults!
    end

    def configuration_to_json
      JSON.dump(configuration)
    end

    def set_defaults!
      @configuration = DEFAULT_CONFIGURATION
      @library_url = DEFAULT_LIBRARY_URL
      @page_title = DEFAULT_PAGE_TITLE
      @specification = DEFAULT_SPECIFICATION
    end
  end
end
