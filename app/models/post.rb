class Post < ActiveRecord::Base
  belongs_to :season
  belongs_to :retailer
  belongs_to :nonprofit
end
