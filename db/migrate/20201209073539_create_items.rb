class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.integer :category_id
      t.text :explanation, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
