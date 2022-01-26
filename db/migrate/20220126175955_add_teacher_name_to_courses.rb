class AddTeacherNameToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :teacher_name, :string
  end
end
