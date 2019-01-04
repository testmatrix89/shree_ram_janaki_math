class Subscriber < ApplicationRecord
	#attr_accessor :email

	validates :email, :presence => true
	validates :email, :uniqueness => true
end
