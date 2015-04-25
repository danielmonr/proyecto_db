class Profesor < ActiveRecord::Base
	validates :nomina, presence: true, length: 9
	validates :nombre, presence: true, length: (minimum:3, maximum: 25)
	validates :apellido, presence: true, length: (minimum:3, maximum:25)
	validates :password, presence: true, length (minimum:5, maximum:25)
end

t.string   "nomina"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "password"