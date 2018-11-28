class Voter < ApplicationRecord
  has_many :donations
  has_many :politicians, through: :donations
end
