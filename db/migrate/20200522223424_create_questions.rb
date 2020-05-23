class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :correct
      t.string :wrong1
      t.string :wrong2
      t.string :wrong3
      t.string :creator

      t.timestamps
    end
  end
end
