require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }

    it 'should have a valid email' do
      subject.email = 'hello.world.com'
      expect(subject).to be_invalid
      subject.email = 'test@mail.com'
      expect(subject).to be_valid
    end
  end
end
