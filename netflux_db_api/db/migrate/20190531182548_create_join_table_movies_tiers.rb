class CreateJoinTableMoviesTiers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :movies, :tiers do |t|
      # t.index [:movie_id, :tier_id]
      # t.index [:tier_id, :movie_id]
    end
  end
end
