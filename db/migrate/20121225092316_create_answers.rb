class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.string :answererName
      t.integer :question_id

      t.timestamps
    end
  end
end
