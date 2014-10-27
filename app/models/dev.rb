class Dev < ActiveRecord::Base
	has_many :tags
	has_many :comments
	has_many :collaborators
	belongs_to :user
end