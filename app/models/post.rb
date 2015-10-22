class Post < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "200x200"}
  has_many :comments
  belongs_to :user
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :caption

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}"])
    else
      find(:all)
    end
  end
end
