class Note < ActiveRecord::Base
	has_many :tags
	belongs_to :user
	
end