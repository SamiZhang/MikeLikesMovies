class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :body
      t.string :poster_image
      t.timestamps null: false
    end
  end
end
