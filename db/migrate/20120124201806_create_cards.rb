class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :company
      t.string :phone
      t.string :street
      t.string :city
      t.string :postal
      t.string :website
      t.string :twitter
      t.string :flickr
      t.string :facebook
      t.string :photo
      t.string :source

      t.timestamps
    end
  end
end
