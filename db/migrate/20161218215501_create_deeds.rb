class CreateDeeds < ActiveRecord::Migration[5.0]
  def change
    create_table :deeds do |t|
      t.integer :max_volunteers
      t.integer :min_volunteers
      t.text :description
      t.string :location
      t.string :category
      t.integer :max_points

      t.timestamps
    end
  end
end
