class Post < ActiveRecord::Base
  belongs_to :season
  belongs_to :retailer
  belongs_to :nonprofit

  has_attached_file :img, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/
end
