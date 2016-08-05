class CreateUserDecks < ActiveRecord::Migration
  def change
    create_table :user_decks do |t|
      t.integer :user_id, null: false
      t.integer :deck_id, null: false
      t.integer :round, null: false
      t.integer :first_try_correct, null: false
      t.integer :total_guesses, null: false

      t.timestamps(null: false)
    end
  end
end
