class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.boolean :available

      t.timestamps
    end
  end
end
