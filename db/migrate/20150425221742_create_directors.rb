class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :nomina
      t.string :nombre
      t.string :password

      t.timestamps null: false
    end
  end
end
