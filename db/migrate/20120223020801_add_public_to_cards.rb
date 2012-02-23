class AddPublicToCards < ActiveRecord::Migration
  def change
    add_column :cards, :public, :integer
  end
end
