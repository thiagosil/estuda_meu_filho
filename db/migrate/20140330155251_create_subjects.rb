class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name

      t.timestamps
    end

    add_column :questions, :subject_id, :integer
  end
end
