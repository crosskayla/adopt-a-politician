class Donation < ApplicationRecord
  belongs_to :voter
  belongs_to :politician
  has_many :donation_tags
  has_many :tags, through: :donation_tags

  #TODO --> FIND A URL PREVIEW GEM
end
