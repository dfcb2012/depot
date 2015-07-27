class Product < ActiveRecord::Base
	validates :title, uniqueness: true
	validates_format_of :image_url, format: {with: /\.(gif|png|jpg)\Z/i}, message: 'must be a URL for GIF, JPG or PNG image.'
	validates_numericality_of :price, greater_than_or_equal_to: 0.50, message: 'Inserir pelo menos 50 centimos'
end
