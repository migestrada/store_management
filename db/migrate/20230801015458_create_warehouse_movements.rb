class CreateWarehouseMovements < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouse_movements do |t|
      t.references :product
      t.decimal :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
