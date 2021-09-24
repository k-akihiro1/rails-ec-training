class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :purchase_company, limit: 128, null: false
      t.integer :purchase_price,  null: false
      t.integer :purchase_quantity,  null: false
      t.references :product, foreign_key: true
      t.timestamp :order_date
      t.timestamp :purchase_date
    end
  end
end
