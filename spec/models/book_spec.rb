require 'rails_helper'

RSpec.describe Book, type: :model do
  subject { build(:unavailable_book) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:published) }
    it { should validate_presence_of(:category) }
    it { should belong_to(:category) }
    it { should belong_to(:user) }
  end

  describe '#name' do
    it 'should only accept letters' do
      subject.name = 'name123'
      expect(subject).to be_invalid
    end
  end

  describe '#author' do
    it 'should only accept letters' do
      subject.author = 'Author123'
      expect(subject).to be_invalid
    end
  end
end
