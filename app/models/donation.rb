class Donation < ApplicationRecord
  belongs_to :voter
  belongs_to :politician
  has_many :donation_tags
  has_many :tags, through: :donation_tags
  validates :description, length: { maximum: 200 }
  validates :dollars, presence: true

  def make_donation
    if self.voter.dollars >= self.dollars
      self.voter.dollars -= self.dollars
      @message = "Success!"
      return true
    else
      @message = "Insufficient funds to make this donation."
      return false
    end
  end

  def self.total_donations
    Donation.all&.sum(:dollars)&.round || 0
  end

  def self.average_donation
    Donation.all&.average(:dollars)&.round || 0
  end

end
