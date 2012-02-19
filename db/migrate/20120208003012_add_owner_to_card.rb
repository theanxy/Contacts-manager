class AddOwnerToCard < ActiveRecord::Migration
  def change
    add_column :cards, :owner, :integer
  end
end
