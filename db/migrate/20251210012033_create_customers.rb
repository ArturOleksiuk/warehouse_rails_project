class CreateCustomers < ActiveRecord::Migration[8.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.text :address
      t.string :client_type

      t.timestamps
    end
  end
end
