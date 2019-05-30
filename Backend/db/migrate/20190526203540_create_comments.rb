class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :owner_name
      t.belongs_to :photo

      t.timestamps
    end
  end
end
