json.extract! game, :id, :title, :year, :developer, :genre, :rating, :review, :store_url, :box_art_url, :created_at, :updated_at
json.url game_url(game, format: :json)
