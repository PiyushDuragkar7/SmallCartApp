class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.integer :product_id, null: false, foreign_key: true
      t.integer :cart_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
