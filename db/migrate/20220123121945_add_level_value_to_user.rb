class AddLevelValueToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :material_name, :string
  end
end
