class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.integer :category_id
      t.integer :supplier_id

      t.timestamps
    end
  end
end
