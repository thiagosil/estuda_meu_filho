class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.integer :year

      t.timestamps
    end

    add_column :questions, :exam_id, :integer
  end
end
