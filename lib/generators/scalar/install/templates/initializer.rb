# frozen_string_literal: true

Scalar.setup do |config|
  # Specify the specific version of the Scalar. By default it uses the latest one
  #
  # config.library_url = "https://cdn.jsdelivr.net/npm/@scalar/api-reference"

  # Add custom page title displayed in the browser tab
  #
  # config.page_title = "API Reference"

  # Pass your API specification. It may be URL or file content in OpenAPI format
  #
  # config.specification = File.read(Rails.root.join("docs/openapi.yml"))

  # Additional Scalar configuration (e.g. theme) can be set here
  #
  # config.scalar_configuration = {
  #   theme: "purple"
  # }
end
