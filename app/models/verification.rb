class Verification < ApplicationRecord
  belongs_to :user
  enum kind: %I[email mobile]

  validates_presence_of :token, :expires_at

  before_create :generate_token

  private

  def generate_token
    # Generate unique token
    # and probably set expiry date too
  end
end
