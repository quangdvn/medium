class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.integer :gender
      t.integer :age
      t.string :password_digest
      t.boolean :is_admin

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
