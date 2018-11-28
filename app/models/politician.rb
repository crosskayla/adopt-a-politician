class Politician < ApplicationRecord
  has_many :donations
  has_many :voters, through: :donations
end
