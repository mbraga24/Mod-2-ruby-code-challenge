class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating, :inclusion => {:in => 1..5}
  validates :guest, uniqueness: { scope: :episode }
end