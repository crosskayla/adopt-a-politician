class Donation < ApplicationRecord
  belongs_to :voter
  belongs_to :politician
  has_many :donation_tags
  has_many :tags, through: :donation_tags

  #TODO --> make_donation method that deals w balance

  def make_donation
    if self.voter.dollars >= self.dollars
      self.voter.dollars -= self.dollars
      self.politician.dollars += self.dollars
      @message = "Success!"
      return true
    else
      @message = "Insufficient funds to make this donation."
      return false
    end
  end

  #TODO --> FIND A URL PREVIEW GEM
end
