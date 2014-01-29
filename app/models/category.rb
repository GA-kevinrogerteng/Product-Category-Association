class Category < ActiveRecord::Base
	has_many :product_categories
	has_many :products, through: :product_categories

	validates :name, presence: true, length: { maximum: 30 }
	validates :description, presence: true, length: { maximum: 500 }

end
