class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :value
      t.integer :question_id
      t.integer :person_id

      t.timestamps
    end
  end
end
