class CreateReviews < ActiveRecord::Migration[8.1]
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :content
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
