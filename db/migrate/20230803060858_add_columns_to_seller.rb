class AddColumnsToSeller < ActiveRecord::Migration[7.0]
  def change
    add_column :sellers, :email, :string
  end
end
