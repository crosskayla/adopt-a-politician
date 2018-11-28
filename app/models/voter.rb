class Voter < ApplicationRecord
  has_many :donations
  has_many :politicians, through: :donations
  has_secure_password #adds password cannot be blank validation

  validates :username, uniqueness: true
  validates :age, inclusion: { in: 18..122 }
  validates :dollars, presence: true

  after_initialize :init

  def init
  end


end
