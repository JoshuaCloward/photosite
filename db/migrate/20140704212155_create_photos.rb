class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo_url
      t.string :album_id
      t.string :name
      t.string :album
      t.string :description
      t.timestamps
    end
  end
end
