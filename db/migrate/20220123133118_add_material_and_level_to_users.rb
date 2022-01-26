class AddMaterialAndLevelToUsers < ActiveRecord::Migration[6.1]
  def change
    #add_column :users, :material_name, :string
    add_column :users, :level_name, :string
    add_column :users, :school_name, :string
    add_column :users, :city_name, :string
  end
end
