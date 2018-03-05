class User < ApplicationRecord
  has_many :events
  has_many :requests, through: :events
  has_many :invitations, through: :events
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :age, presence: true
end
