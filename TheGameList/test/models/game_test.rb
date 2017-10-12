require 'test_helper'

class GameTest < ActiveSupport::TestCase
  test "game attributes must not be empty" do
		game = Game.new
		assert game.invalid?
		assert game.errors[:title].any?
		assert game.errors[:year].any?
		assert game.errors[:developer].any?
		assert game.errors[:platform].any?
		assert game.errors[:genre].any?
		assert game.errors[:description].any?
		assert game.errors[:year].any?
		assert game.errors[:box_art_url].any?
	end

	test "image url must point to an image file" do
		game = games(:one)
		ok = %w{ frog.gif frog.jpg frog.png FROG.PNG fRoG.PnG
		         http://a.b.c/x/y/z/frog.png frog.jpeg }
		bad = %w{ frog.doc frog.png/less frog.png.less }

		ok.each do |url|
		  game.box_art_url = url
		  assert game.valid?, "#{url} should be a valid image url"
		end

		bad.each do |url|
		  game.box_art_url = url
		  assert game.invalid?, "#{url} shouldn't be a valid image url"
		end
	end

	test "game year must be positive" do
		game = games(:one)

		game.year = -1
		assert game.invalid?
		assert game.errors[:year].any?

		game.year = 0
		assert game.invalid?
		assert game.errors[:year].any?

		game.year = 2016
		assert game.valid?
		assert game.errors[:year].none?
	end


end
