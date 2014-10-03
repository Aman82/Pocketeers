class CombineUserAndCurriculum < ActiveRecord::Migration
  def change
    add_column :curriculums, :user_id, :integer
  end
end
