# require 'rails_helper'

# RSpec.describe Product, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { described_class.new(
    name: 'Test Product',
    category: 'Doodad',
    price: 500
  )}

  it 'is vaild with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a price less than one cent' do
    subject.price = 0
    expect(subject).to_not be_valid
  end
end
