describe ContextValidations::Validations::ConfirmValidator do
  it "inherits from ActiveModel" do
    expect(described_class.superclass).to eq ActiveModel::Validations::ConfirmationValidator
  end
end
