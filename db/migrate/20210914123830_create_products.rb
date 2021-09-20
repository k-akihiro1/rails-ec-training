class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name, limit: 64, null: false
      t.string :description, limit: 256, null: false
      t.references :sale_status, foreign_key: true
      t.references :category, foreign_key: true
      t.references :product_status, foreign_key: true
      # t.references :user, foreign_key: true
      t.integer :price, null: false
      t.boolean :delete_flag, limit: 1, null: false
      t.timestamp :regist_date

      t.timestamps
    end
  end
end
