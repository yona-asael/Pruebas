class Post < ApplicationRecord
  mount_uploader :image, FileUploader
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :votes
end
