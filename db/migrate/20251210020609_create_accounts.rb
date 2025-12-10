class CreateAccounts < ActiveRecord::Migration[8.1]
  def change
    create_table :accounts do |t|
      t.references :supplier, null: false, foreign_key: true
      t.string :account_number
      t.string :bank_name

      t.timestamps
    end
  end
end
