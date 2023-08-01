class AddForeignKeyToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :seller_id, :integer
    add_foreign_key :products, :sellers, column: :seller_id
  end
end
