class RemoveMaterialFromCourses < ActiveRecord::Migration[6.1]
  def change
    safety_assured { remove_column :courses, :material_id }
  end
end
