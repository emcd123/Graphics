class Game < ActiveRecord::Base
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  validates :title, :developer, :platform, :genre, :description, :box_art_url, presence: true
	validates :title, uniqueness: true
	validates :year, numericality: { greater_than_or_equal_to: 2010 }
	validates :box_art_url, allow_blank: true, format: {
	  with: %r{\.(gif|jpg|png|jpeg)\Z}i,
	  message: 'must be a URL for GIF, JPG, JPEG or PNG image.'
	}
  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
       return true
    else
       errors.add(:base, 'Line Items present')
      return false
    end
  end
end
