class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :matricula
      t.string :nombre
      t.string :apellido_p
      t.string :apellido_m
      t.integer :edad
      t.date :fecha_ingreso
      t.string :password

      t.timestamps null: false
    end
  end
end
