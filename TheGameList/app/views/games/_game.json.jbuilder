json.extract! game, :id, :title, :year, :developer, :platform, :genre, :rating, :description, :box_art_url, :created_at, :updated_at
json.url game_url(game, format: :json)
