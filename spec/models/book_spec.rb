require 'rails_helper'

RSpec.describe Book, type: :model do
  subject { build(:book) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:published) }
    it { should validate_presence_of(:category) }
    it { should belong_to(:category) }
    it { should belong_to(:user) }
  end
end
