class CreateLaptops < ActiveRecord::Migration[7.0]
  def change
    create_table :laptops do |t|
      t.string :brand
      t.string :model
      t.integer :price
      t.string :screen_size

      t.timestamps
    end
  end
end
