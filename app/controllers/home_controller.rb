class HomeController < ApplicationController
  before_action :authenticate_user!, only: %i[index]
  before_action :find_levels
  before_action :find_materials
  before_action :find_citylist
  
   
  def index  
    @materials = Material.all.order('created_at desc')
    @levels = Level.all.order('created_at desc')
    #if current_user.role == "Student"
    #  @feed_courses = Course.where('level_id = ?', current_user.level_id).order('created_at desc') and return 
    #elsif current_user.role == "Teacher"
    #  @feed_courses = Course.where('material_id = ?', current_user.material_id).order('created_at desc')  and return
    #else
    #  @feed_courses = Course.all.order('created_at desc')  and return 
    #end
    @feed_courses = Course.all.order('created_at desc')  and return 
  end

  def team
  end

  def enseignant
  end

  private
      def find_levels
        @levels = Level.all
      end
  
      def find_materials
        @materials = Material.all
      end
      def find_citylist
        @city_ereas = CityErea.all
      end
end
