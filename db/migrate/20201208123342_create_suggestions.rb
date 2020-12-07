class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.integer :suggest_id

      t.references :article, null: false, foreign_key: true
      t.timestamps
    end
  end
end
