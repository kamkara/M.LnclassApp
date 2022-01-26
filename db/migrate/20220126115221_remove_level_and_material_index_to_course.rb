class RemoveLevelAndMaterialIndexToCourse < ActiveRecord::Migration[6.1]
  def change
    remove_index :courses, :index_courses_on_level_id
    remove_index :courses, :index_courses_on_material_id
  end
end
