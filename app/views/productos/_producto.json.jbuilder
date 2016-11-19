json.extract! producto, :id, :descripcion, :modelo_id, :codigo_fabricante, :unidad, :created_at, :updated_at
json.url producto_url(producto, format: :json)