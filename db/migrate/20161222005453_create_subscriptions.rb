class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :deed_id
      t.integer :points

      t.timestamps
    end
  end
end
