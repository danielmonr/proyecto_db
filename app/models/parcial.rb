class Parcial < ActiveRecord::Base
	validates :numero, presence: true
	validates :calificacion, presence: true
end