class AddPublicToCards < ActiveRecord::Migration
  def change
    add_column :cards, :public, :integer
    Card.all.each do |card|
      card.update_attributes!(:public => 1)
    end
  end
end
