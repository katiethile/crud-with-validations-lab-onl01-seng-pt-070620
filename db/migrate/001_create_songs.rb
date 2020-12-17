class CreateSongs < ActiveRecord::Migration
    def change
      create_table :songs do |t|
        t.string :title
        t.boolean :released
        t.integer :release_year
        t.string :artist_name
        t.string :genre
  
<<<<<<< HEAD
        t.timestamps null: false 
=======
        t.timestamps
>>>>>>> 015d347b8367a87dda197d0f51d8db8672921002
      end
    end
  end