class CreateOrderProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :order_products do |t|
      t.references :Product, foreign_key: true
      t.references :Order, foreign_key: true

      t.timestamps
    end
  end
end
