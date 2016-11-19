class ProductoAlmacen < ApplicationRecord
  belongs_to :producto
  belongs_to :almacen
end
