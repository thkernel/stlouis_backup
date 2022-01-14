class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.string :uid
      t.references :order, foreign_key: true
      t.references :food, foreign_key: true
      t.float :quantity
      t.float :price
      t.float :amount
      t.string :status

      t.timestamps
    end
  end
end
