class User < ApplicationRecord
  has_many :studios
  has_many :bookings, source: :booking
  has_many :reviews, as: :reviewable
  has_many :incoming_bookings, through: :studios, source: :bookings
  has_attached_file :picture
  has_many :verifications

  has_secure_password
end
