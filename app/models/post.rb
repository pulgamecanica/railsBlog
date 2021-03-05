class Post < ApplicationRecord
  belongs_to :author
  has_many :elements

  has_one_attached :header_image
  before_update :set_published_time

  def set_published_time
  	if self.published
  		self.published_at = Time.now
  	else
  		self.published_at = nil
  	end

  end
end
