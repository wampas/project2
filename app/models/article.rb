class Article < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true
	# Relationships
	belongs_to :user
	has_many :comments, dependent: :destroy #deletes comments if article is destroyed
  # Paperclip
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
