class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :phrase
      t.integer :category_id
      t.integer :order_position
      t.string :notes_required_for_response

      t.timestamps
    end
  end
end
