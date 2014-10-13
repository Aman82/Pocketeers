class AddColumnsToInterests < ActiveRecord::Migration
  def change
  	add_column :interests, :count, :integer
  	add_column :interests, :topic, :string
  end
end
