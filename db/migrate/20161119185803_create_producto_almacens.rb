class CreateProductoAlmacens < ActiveRecord::Migration[5.0]
  def change
    create_table :producto_almacens do |t|
      t.belongs_to :producto, foreign_key: true
      t.belongs_to :almacen, foreign_key: true
      t.float :cantidad
      t.float :cantidad_comprometida
      t.float :reorden

      t.timestamps
    end
  end
end
