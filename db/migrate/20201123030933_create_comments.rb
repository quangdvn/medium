class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.bigint :user_id
      t.bigint :article_id
      t.text :detail

      t.timestamps
    end

    add_index :comments, :user_id
    add_index :comments, :article_id
    add_index :comments, [:user_id, :article_id]
  end
end
