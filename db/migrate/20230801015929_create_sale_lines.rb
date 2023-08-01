class CreateSaleLines < ActiveRecord::Migration[7.0]
  def change
    create_table :sale_lines do |t|
      t.references :sale
      t.references :warehouse_movement

      t.timestamps
    end
  end
end
