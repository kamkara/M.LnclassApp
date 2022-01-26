class RemoveLevelAndMaterialIndexToCourse < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :level_id
  end
end
