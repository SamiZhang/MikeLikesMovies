class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.integer :group_review_id
      t.integer :cinematography_score
      t.integer :score_score
      t.integer :cast_score
      t.integer :direction_score
      t.integer :overall_score

      t.timestamps null: false
    end
  end
end
