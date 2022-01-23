class AddLevelAndMaterialToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :level_name, :string
    add_column :courses, :material_name, :string
  end
end
