class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.timestamp :timestamp

      t.timestamps
    end
  end
end
