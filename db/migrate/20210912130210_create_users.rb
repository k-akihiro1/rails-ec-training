class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :password, limit: 64, null: false
      t.string :last_name, limit: 16, null: false
      t.string :first_name, limit: 16, null: false
      t.string :postalcode, limit: 16, null: false
      t.string :prefecture, limit: 16, null: false
      t.string :municipalities, limit: 16, null: false
      t.string :addres, limit: 32, null: false
      t.string :roomnumber, limit: 32, null: false
      t.string :email, limit: 128, null: false
      t.string :phone_number, limit: 16, null: false
      t.string :user_classification_id
      t.string :company_name, limit: 128, null: false
      t.boolean :delete_flag, limit: 1, null: false

      t.timestamps
    end
  end
end
