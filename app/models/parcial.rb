class Parcial < ActiveRecord::Base
	has_many :actividads
	
	validates :numero, presence: true
	validates :calificacion, presence: true
end