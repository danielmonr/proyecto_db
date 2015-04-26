class DropCarrerasId < ActiveRecord::Migration
  def change
  	remove_column :carreras, :id_director
  end
end
