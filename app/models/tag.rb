class Tag < ApplicationRecord
  has_many :donation_tags
  has_many :donations, through: :donation_tags

  #should select the existing tag if already exists
  validates :username, uniqueness: true
end
