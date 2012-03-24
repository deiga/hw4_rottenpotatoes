class AddDirectorToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :director, :String
  end
end
