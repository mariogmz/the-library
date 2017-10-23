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
      subject.name = 'name 123'
      expect(subject).to be_invalid
      subject.name = 'Foo Bar'
      expect(subject).to be_valid
    end
  end

  describe '#author' do
    it 'should only accept letters' do
      subject.author = 'Author 123'
      expect(subject).to be_invalid
      subject.author = 'John Doe'
      expect(subject).to be_valid
    end
  end

  describe '#is_available?' do
    it { should respond_to(:is_available?) }

    it 'should tell if the book is available' do
      expect(subject.is_available?).to be_falsy
      subject.user = nil
      expect(subject.is_available?).to be_truthy
    end
  end

  describe '#lend_to' do
    let(:user) { create(:user) }
    before { subject.lend_to(user) }

    it { should respond_to(:lend_to) }
    it 'should change the status to unavailable' do
      expect(subject.is_available?).to be_falsy
    end

    it 'should associate the book to an user' do
      expect(subject.user).to eql(user)
    end
  end
end
