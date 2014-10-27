class User < ActiveRecord::Base
	has_secure_password
	has_many :devs
	has_many :designs
	has_many :comments
	has_many :notes
end