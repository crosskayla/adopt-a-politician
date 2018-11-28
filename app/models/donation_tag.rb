class DonationTag < ApplicationRecord
  belongs_to :donation
  belongs_to :tag
end
