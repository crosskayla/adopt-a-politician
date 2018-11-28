class Voter < ApplicationRecord
  has_many :donations
  has_many :politicians, through: :donations
  has_secure_password
end
