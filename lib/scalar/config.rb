# frozen_string_literal: true

require 'json'
require 'singleton'

module Scalar
  class Config
    include Singleton

    SPECIFICATION_DESCRIPTION = <<~MARKDOWN
      Add your OpenAPI specification to leverage the full power of Scalar!

      ## Resources

      * https://github.com/scalar/scalar
      * https://github.com/OAI/OpenAPI-Specification
      * https://scalar.com
    MARKDOWN

    DEFAULT_CONFIGURATION = {}.freeze
    DEFAULT_PAGE_TITLE = 'API Reference'
    DEFAULT_LIBRARY_URL = 'https://cdn.jsdelivr.net/npm/@scalar/api-reference'

    DEFAULT_SPECIFICATION = JSON.dump({
      "openapi": "3.1.0",
      "info": {
        "title": "Scalar API Reference",
        "description": SPECIFICATION_DESCRIPTION,
        "version": "1.0.0"
      }
    })

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
