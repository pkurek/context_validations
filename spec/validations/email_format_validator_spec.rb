describe ContextValidations::Validations::EmailFormatValidator do
  subject { described_class.new(attributes: :email) }

  it "inherits from FormatValidator" do
    expect(described_class.superclass).to eq ContextValidations::Validations::FormatValidator
  end

  it "sets default options" do
    expect(subject.options).to eq({ with: /.+@.+\..+/ })
  end
end
