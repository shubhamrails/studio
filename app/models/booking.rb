class Booking < ApplicationRecord

  belongs_to :user
  belongs_to :studio
  has_many :slots
  has_many :reviews, as: :reviewable

  enum status: %I[requested declined confirmed]

end
