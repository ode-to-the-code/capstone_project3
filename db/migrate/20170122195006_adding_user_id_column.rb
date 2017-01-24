class AddingUserIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :deeds, :user_id, :integer
  end
end
