class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_many :requests
  has_many :invitations
  validates :location_name, presence: true
  validates :location_address, presence: true
  validates :time, presence: true
  geocoded_by :location_address
  after_validation :geocode, if: :will_save_change_to_location_address?
end
