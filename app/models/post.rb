class Post < ActiveRecord::Base
  has_many :posts
  mount_uploader :image, ImageUploader
  validates :title, :text, :image, presence: true
  validates :title, :uniqueness => {:message => "Already taken!"}
end
