class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :title
      t.string :topic
      t.text :summary
      t.text :syllabus
      t.string :timeframe

      t.timestamps
    end
  end
end
