class DropForeignkeys < ActiveRecord::Migration
  def change
  	remove_column :actividads, :id_parcial
  	remove_column :alumnos, :id_carrera
  end
end
