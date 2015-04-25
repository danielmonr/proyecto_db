class Carrera < ActiveRecord::Base
	has_many :alumnos

	validates :siglas, presence: true, length: (minimum:3, maximum:5)
	validates :nombre, presence: true, length: (minimum:3, maximum:25)
end