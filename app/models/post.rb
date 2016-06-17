class Post < ActiveRecord::Base
  has many :posts
  validates :title, :text, presence: true
  validates :title, :uniqueness => {:message => "Already taken!"}
end
