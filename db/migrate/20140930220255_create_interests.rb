class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|

      t.timestamps
    end
  end
end
