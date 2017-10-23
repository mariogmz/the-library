class Book < ApplicationRecord

  validates_presence_of :name, :author, :published, :category
  validates :name, :author, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters allowed" }
  belongs_to :category
  belongs_to :user

  def is_available?
    user.nil?
  end
end
