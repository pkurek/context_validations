# ContextValidations

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'context_validations'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install context_validations

## Usage

This is a fun project that I started cause I needed context validations.

What you can do with it right now

```ruby
class CreateUserValidator
  include Validations::Base

  def validators
    [
      validates([:email, :name], :uniq),
      validates(:email, :email_format),
      validates(:name,  :length, minimum: 4),
      validates(:password, :confirm),
      validates(:password, :present),
      validates(:password_confirmation, :present),
      validates(:password, :length, in: 6..25),
    ]
  end
end

class User < ActiveRecord::Base
end

user = User.new(attributes)
validator = CreateUserValidator.new(user)
validator.valid?
```



## Contributing

1. Fork it ( http://github.com/<my-github-username>/context_validations/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
