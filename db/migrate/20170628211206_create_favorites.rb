class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :ingredient
      t.string :user_id
      t.timestamps
    end
    add_index :favorites, :ingredient, unique: true
  end
end
