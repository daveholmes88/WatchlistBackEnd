class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :plot
      t.string :release_date
      t.float :vote_average
      t.string :poster
      
      t.timestamps
    end
  end
end
