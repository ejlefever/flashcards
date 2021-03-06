class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question, null: false
      t.string :answer, null: false
      t.integer :deck_id, null: false
      t.boolean :guessed_correctly, null: false
      t.boolean :guessed, null: false

      t.timestamps(null: false)
    end
  end
end
