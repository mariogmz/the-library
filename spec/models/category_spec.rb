require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { build(:category) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should have_many(:books) }
  end

  describe '#name' do
    it 'should only accept letters' do
      subject.name = 'name 123'
      expect(subject).to be_invalid
      subject.name = 'Foo Bar'
      expect(subject).to be_valid
    end
  end
end
