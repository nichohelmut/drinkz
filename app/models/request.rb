class Request < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many :messages
  # after_create :send_email_to_user


  # private

  # def send_email_to_user
  #   #...
  # end
end
