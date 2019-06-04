class Image < ApplicationRecord
  belongs_to :studio
  has_attached_file :picture

end
