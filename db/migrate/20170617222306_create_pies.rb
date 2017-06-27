class CreatePies < ActiveRecord::Migration[5.0]
  def change
    create_table :pies do |t|
      t.text :pizza

      t.timestamps
    end
  end
end
