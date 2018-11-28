class Tag < ApplicationRecord
  has_many :donation_tags
  has_many :donations, through: :donation_tags
end
