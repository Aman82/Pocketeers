class AddIdToGroupFromCurriculum < ActiveRecord::Migration
  def change
    add_column :groups, :curriculum_id, :integer
  end
end
