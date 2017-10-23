class Category < ApplicationRecord

  validates_presence_of :name, :description
  validates :name, format: { without: /[0-9]+/, message: "Only letters allowed" }
  has_many :books
end
