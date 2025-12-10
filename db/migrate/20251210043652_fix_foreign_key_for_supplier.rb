class FixForeignKeyForSupplier < ActiveRecord::Migration[8.1]
  def change
    if foreign_key_exists?(:products, :suppliers)
      remove_foreign_key :products, :suppliers
    end
    
    change_column_null :products, :supplier_id, true
  end
end
