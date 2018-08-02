class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  validates :name, uniqueness: true, presence: true
end

# has_many :reviews, dependent: :destroy

#   validates :name, presence: true
#   validates :address, presence: true
#   validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
