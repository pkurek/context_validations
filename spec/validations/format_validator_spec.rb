describe ContextValidations::Validations::FormatValidator do
  it "inherits from ActiveModel" do
    expect(described_class.superclass).to eq ActiveModel::Validations::FormatValidator
  end
end
