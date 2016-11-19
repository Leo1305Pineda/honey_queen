class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :descripcion, limit: 120
      t.belongs_to :modelo, foreign_key: true
      t.string :codigo_fabricante, limit: 35
      t.string :unidad

      t.timestamps
    end
  end
end
