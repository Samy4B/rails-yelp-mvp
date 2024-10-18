class Restaurant < ApplicationRecord
 # Associations
 has_many :reviews, dependent: :destroy

 # Validations
 validates :name, presence: true
 validates :address, presence: true
 validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
