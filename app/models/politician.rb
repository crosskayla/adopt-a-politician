class Politician < ApplicationRecord
  has_many :donations
  has_many :voters, through: :donations

  validates :name, uniqueness: true

  def average_donation
    self.donations&.average(:dollars)&.round || 0
  end

  def total_donations
    self.donations&.sum(:dollars) || 0
  end

end
