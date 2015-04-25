class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|
      t.string :nombre
      t.string :siglas

      t.timestamps null: false
    end
  end
end
