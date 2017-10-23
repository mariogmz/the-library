class Book < ApplicationRecord

  validates_presence_of :name, :author, :published, :category
  validates :name, :author, format: { without: /[0-9]+/, message: "Only letters allowed" }
  belongs_to :category
  belongs_to :user

  def is_available?
    user.nil?
  end

  def lend_to(user)
    self.update!(user: user)
  end
end
