class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.bigint :user_id
      t.bigint :article_id

      t.timestamps
    end

    add_index :likes, :user_id
    add_index :likes, :article_id
    add_index :likes, [:user_id, :article_id], unique: true
  end
end
