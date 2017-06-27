class CreateJoinTableIngredientsPies < ActiveRecord::Migration[5.0]
  def change
    create_join_table :ingredients, :pies do |t|
      # t.index [:ingredient_id, :py_id]
      # t.index [:py_id, :ingredient_id]
    end
  end
end
