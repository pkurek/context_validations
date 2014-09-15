describe ContextValidations::Validations::PresentValidator do
  it "inherits from ActiveModel" do
    expect(described_class.superclass).to eq ActiveModel::Validations::PresenceValidator
  end
end
