class ChangeSupplierIdNullableInProducts < ActiveRecord::Migration[8.1]
  def change
    change_column_null :products, :supplier_id, true
  end
end
