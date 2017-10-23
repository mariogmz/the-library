class User < ApplicationRecord

  validates_presence_of :name, :email
  validates :name, format: { without: /[0-9]+/, message: "No numbers allowed" }
  validates_format_of :email, with: /@/
end
