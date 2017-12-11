class AddNamesToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :contender_name, :string
    add_column :games, :user_name, :string
  end
end
