class FieldChange2 < ActiveRecord::Migration[5.0]
  def change
    add_column :deeds, :name, :string
    add_column :deeds, :image, :string
  end
end
