class Post < ActiveRecord::Base
  has_attached_file :image
  has_many :comments
  belongs_to :user
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :caption
end
