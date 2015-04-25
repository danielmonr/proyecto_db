class Director < ActiveRecord::Base
	validates :nomina, presence: true, length: 9
	validates :nombre, presence: true, length: (minimum:3, maximum:25)
	validates :password, presence: true, length: (minimum:5, maximum:25)
end