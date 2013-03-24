class Recipe < ActiveRecord::Base
  attr_accessible :image, :ingredients, :last_made, :made_by, :name, :serves
end
