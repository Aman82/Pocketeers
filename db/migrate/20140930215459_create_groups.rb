class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :topic
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.text :chatbox

      t.timestamps
    end
  end
end
