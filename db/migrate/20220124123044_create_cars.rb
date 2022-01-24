class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
