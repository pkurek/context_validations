require "context_validations/validations/format_validator"

module ContextValidations
  module Validations
    class EmailFormatValidator < FormatValidator
      def initialize(options)
        super(options.merge(with: /.+@.+\..+/))
      end
    end
  end
end
