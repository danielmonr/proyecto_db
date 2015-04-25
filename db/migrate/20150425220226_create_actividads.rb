class CreateActividads < ActiveRecord::Migration
  def change
    create_table :actividads do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :ponderacion

      t.timestamps null: false
    end
  end
end
