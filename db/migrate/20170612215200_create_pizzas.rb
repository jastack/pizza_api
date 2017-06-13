class CreatePizzas < ActiveRecord::Migration[5.0]
  def change
    create_table :pizzas do |t|
      t.date :date
      t.text :pizza_type
      t.timestamps
    end
  end
end
