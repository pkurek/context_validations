describe ContextValidations::Validations::UniqValidator do
  subject { described_class.new(attributes: :email, class: Object) }

  it "inherits from ActiveRecord" do
    expect(described_class.superclass).to eq ActiveRecord::Validations::UniquenessValidator
  end

  it "sets the class automatically" do
    klass = subject.instance_variable_get("@klass")

    expect(klass).to eq Object
  end
end
