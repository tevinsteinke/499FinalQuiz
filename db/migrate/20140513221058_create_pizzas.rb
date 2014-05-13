class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :toppings
      t.integer :user_id

      t.timestamps
    end
  end
end
