class CreateModelos < ActiveRecord::Migration[5.0]
  def change
    create_table :modelos do |t|

      t.string :modelo, limit: 35, unique: true
      t.belongs_to :marca, foreign_key: true

      t.timestamps
    end
  end
end
