class AddFoerignkeys < ActiveRecord::Migration
  def change
  	add_column :alumnos, :carrera_id, :int
  	add_column :actividads, :parcial_id, :int
  	add_column :carreras, :director_id, :int
  end
end
