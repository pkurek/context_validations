describe ContextValidations::Validations::NumberValidator do
  it "inherits from ActiveModel" do
    expect(described_class.superclass).to eq ActiveModel::Validations::NumericalityValidator
  end
end
