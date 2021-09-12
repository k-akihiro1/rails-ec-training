class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name, limit: 64, null: false
      t.string :description, limit: 256, null: false

      t.references :category,       foreign_key: true,  null: false
      t.references :sale_status,    foreign_key: true,  null: false
      t.references :product_status, foreign_key: true,  null: false
      t.references :user,           foreign_key: true,  null: false

      t.integer :price,  null: false

      t.boolean :delete_flag, limit: 1, null: false

      t.timestamps :regist_date
    end
  end
end
