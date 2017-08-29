class Dose < ApplicationRecord
  validates :name, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id] # combination of cocktail & ingredient must be unique

  belongs_to :ingredient
  belongs_to :cocktail
end
