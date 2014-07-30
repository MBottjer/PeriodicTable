class Tile < ActiveRecord::Base
	validates :element, presence: true
	validates :description, presence: true
	validates_associated :category
	belongs_to :category
end
