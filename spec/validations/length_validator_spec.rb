describe ContextValidations::Validations::LengthValidator do
  it "inherits from ActiveModel" do
    expect(described_class.superclass).to eq ActiveModel::Validations::LengthValidator
  end
end
