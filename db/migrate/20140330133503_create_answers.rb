class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question
      t.boolean :correct
      t.string :alternative

      t.timestamps
    end
  end
end
