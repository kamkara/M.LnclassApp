class AddCityIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :city_id, :uuid
  end
end
