class CreateGroupReviews < ActiveRecord::Migration
  def change
    create_table :group_reviews do |t|
      t.integer :group_id
      t.integer :movie_id
      t.date :due_date
      t.timestamps null: false
    end
  end
end
