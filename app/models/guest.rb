class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances

  def appearance_rating(episode)
    self.appearances.find do |appear|
      appear.episode_id == episode
    end.rating
  end
end
