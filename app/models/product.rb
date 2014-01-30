class Product < ActiveRecord::Base
  has_many :product_categories
  has_many :categories, through: :product_categories

	validates :name, presence: true, length: { maximum: 30 }
	validates :description, presence: true, length: { maximum: 500 }

	accepts_nested_attributes_for :product_categories, allow_destroy: true
end
