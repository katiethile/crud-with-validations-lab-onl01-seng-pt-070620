class Song < ActiveRecord::Base
<<<<<<< HEAD
    validates :title, presence: true, uniqueness: true
    validates_presence_of :release_year, :if => :released?
    validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }, :if => :released?
    validates :artist_name, presence: true
  end
=======
    validates :artist_name, presence: true 
    validates :title, presence: true 
    validates :release_year, presence: true 
    validates :released, inclusion: [true, false]
    validates :title, uniqueness: { scope: %i(artist_name release_year), message: 'Cannot be repeated by the same artist in the same year' }

    with_options if: :released? do |song|
        song.validates :release_year, presence: true 
        song.validates :release_year, numericality: {
            less_than_or_equal_to: Date.today.year,
          }
        end
end 
>>>>>>> 015d347b8367a87dda197d0f51d8db8672921002
