class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.integer :likes
      t.string :image
      t.string :owner_name
      t.belongs_to :genre
      
      t.timestamps
    end
  end
end

