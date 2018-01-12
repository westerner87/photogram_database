class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :date
      t.string :caption
      t.string :image
      t.integer :user_id
      t.boolean :likes

      t.timestamps

    end
  end
end
