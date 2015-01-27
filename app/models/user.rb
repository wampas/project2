class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles, dependent: :destroy

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  
  validates_attachment :preview,
  :content_type => { :content_type => "image/jpeg",
  	:content_type => "image/png",
  	:content_type => "image/gif" },
  	:size => { :in => 0..5.megabytes }
  
end
