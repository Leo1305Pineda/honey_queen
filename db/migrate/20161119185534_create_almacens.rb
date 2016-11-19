class CreateAlmacens < ActiveRecord::Migration[5.0]
  def change
    create_table :almacens do |t|
      t.string :ubicacion, limit: 120
      t.string :nombre, limit: 35
      t.string :encargado, limit: 35

      t.timestamps
    end
  end
end
