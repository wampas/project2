class Article < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true
	
	belongs_to :user
	has_many :comments, dependent: :destroy #deletes comments if article is destroyed
	#note that we'll leave all comments, even if a user is destroyed
end
