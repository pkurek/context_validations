module ContextValidations
  module Base
    attr_reader :entity

    def initialize(entity)
      @entity = entity
    end

    def valid?
      validators.each { |v| v.validate(entity) }

      entity.errors.empty?
    end

    def validates(attributes, validator, opts = {})
      opts.merge!(attributes: attributes)

      case validator
      when :uniq
        Validations::UniqValidator.new opts.merge(class: entity.class)
      when :email_format
        Validations::EmailFormatValidator.new opts
      when :present
        Validations::PresentValidator.new opts
      when :confirm
        Validations::ConfirmValidator.new opts
      when :length
        Validations::LengthValidator.new opts
      when :number
        Validations::NumberValidator.new opts
      end
    end
  end
end
