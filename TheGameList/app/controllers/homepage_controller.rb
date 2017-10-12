class HomepageController < ApplicationController
  def index
		@games = Game.order(:title)
  end
end
