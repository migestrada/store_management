class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :user

      t.timestamps
    end
  end
end
