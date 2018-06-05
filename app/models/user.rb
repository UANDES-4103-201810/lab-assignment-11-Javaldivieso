class User < ApplicationRecord
	has_many :messages
	validates :usarname, uniqueness: true
	validates :email, uniqueness: true
	validates :usarname, length: { maximum: 20 }
end
