class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.string :order_number, limit: 16

      t.timestamps
      t.references :user, null: false, foreign_key: true
    end
  end
end
