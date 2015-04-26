class Carrera < ActiveRecord::Base
	has_many :alumnos
	belongs_to :director

	validates :siglas, presence: true, length: (minimum:3, maximum:5)
	validates :nombre, presence: true, length: (minimum:3, maximum:25)
end