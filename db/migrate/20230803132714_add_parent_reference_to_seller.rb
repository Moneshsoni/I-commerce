class AddParentReferenceToSeller < ActiveRecord::Migration[7.0]
  def change
    add_reference :sellers, :rseller, foreign_key: true
  end
end
