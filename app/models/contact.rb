class Contact < ApplicationRecord
  validates :email, :presence => true
  validates :email, :uniqueness => true
  validates :name, :presence => true
  validates :body, :presence => true
end
