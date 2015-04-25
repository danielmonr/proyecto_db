class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materia do |t|
      t.string :nombre
      t.integer :horas_semanales

      t.timestamps null: false
    end
  end
end
