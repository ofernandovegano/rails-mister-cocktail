class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail_id, uniqueness: {scope: :ingredient_id}
  # validates_uniqueness_of :cocktail_id, scope: %i[ingredient_id]
end
