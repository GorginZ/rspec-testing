RSpec.describe 'RSpec Tests' do
    it 'Is the truth' do
      expect(true).to_not eql(false)
    end
  
    it "is a number" do
      expect(10).to eql(10)
    end
  end