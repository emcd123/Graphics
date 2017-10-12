class Game < ActiveRecord::Base
validates :title, :developer, :platform, :genre, :description, :box_art_url, presence: true
	validates :title, uniqueness: true
	validates :year, numericality: { greater_than_or_equal_to: 2010 }
	validates :box_art_url, allow_blank: true, format: {
	  with: %r{\.(gif|jpg|png|jpeg)\Z}i,
	  message: 'must be a URL for GIF, JPG, JPEG or PNG image.'
	}
end
