class Materium < ActiveRecord::Base
	validates :nombre, presence: true, length: (minimum: 3, maximum:25)
end