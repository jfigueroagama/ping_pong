class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.date :game_date
      t.integer :user_id
      t.integer :contender_id

      t.timestamps
    end
  end
end
