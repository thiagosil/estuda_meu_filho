class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.attachment :picture
      
      t.timestamps
    end
  end
end
