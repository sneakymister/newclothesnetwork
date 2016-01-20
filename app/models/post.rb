class Post < ActiveRecord::Base
  belongs_to :season
  belongs_to :retailer
  has_one :nonprofit
end
