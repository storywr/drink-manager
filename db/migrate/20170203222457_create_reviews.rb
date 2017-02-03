class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :summary
      t.integer :rating
      t.integer :user_id
      t.integer :beer_id
      t.timestamps
    end
  end
end
