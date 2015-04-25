class CreateParcials < ActiveRecord::Migration
  def change
    create_table :parcials do |t|
      t.integer :numero
      t.integer :calificacion

      t.timestamps null: false
    end
  end
end
