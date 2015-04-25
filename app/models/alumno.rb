class Alumno < ActiveRecord::Base
	belongs_to :carrera

	validates :matricula, presence: true, length: 9
	validates :nombre, presence: true, length: (minimum: 3, maximum:25)
	validates :apellido_p, presence: true, length: (minimum: 3, maximum:25)
	validates :apellido_m, presence: true, length: (minimum: 3, maximum:25)
	validates :edad, presence: true
	validates :password, presence: true, length: (minimum:5, maximum:25)
	
end
