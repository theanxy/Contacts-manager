class UpdateCardOwner < ActiveRecord::Migration
  def change
    Card.all.each do |card|
      card.update_attributes! :owner => 1
    end
  end
end
