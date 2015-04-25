class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
      t.string :nomina
      t.string :nombre
      t.string :apellido
      t.string :password

      t.timestamps null: false
    end
  end
end
