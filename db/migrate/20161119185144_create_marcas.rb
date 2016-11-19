class CreateMarcas < ActiveRecord::Migration[5.0]
  def change
    create_table :marcas do |t|
      t.string :marca, limit: 35, unique: true
      t.timestamps
    end
  end
end
