# frozen_string_literal: true

module Scalar
  module Installers
    class Rails::Installer
      def self.install
        system('bin/rails generate scalar:rails')
      end
    end
  end
end
