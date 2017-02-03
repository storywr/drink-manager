class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.integer :rating
      t.integer :abv
      t.integer :user_id
      t.integer :style_id
      t.timestamps
    end
  end
end
