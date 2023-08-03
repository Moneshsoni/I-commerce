class RemoveEmailFromSeller < ActiveRecord::Migration[7.0]
  def change
    remove_column :sellers, :email, :string
  end
end
