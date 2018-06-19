class User < ApplicationRecord
	has_secure_password
	# has_many :friends
	# has_many :posts
	# validates presence_of :first_name, :last_name
	has_one :date_of_Loved_ones_death
end
