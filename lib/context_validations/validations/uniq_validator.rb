module ContextValidations
  module Validations
    class UniqValidator < ActiveRecord::Validations::UniquenessValidator
      def initialize(options)
        super

        #activerecord needs this to setup class
        setup(options[:class])
      end
    end
  end
end
