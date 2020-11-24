class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :detail
      t.integer :gender
      t.integer :age
      t.string :password_digest
      t.boolean :is_admin
      t.references :author, null: false, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
