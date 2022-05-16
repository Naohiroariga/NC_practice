class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :introduction
      t.integer :genre_id
      t.integer :value
      t.integer :is_active

      t.timestamps
    end
  end
end
