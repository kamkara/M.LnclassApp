class DashboardController < ApplicationController
  before_action :cityEreas

  def index
    @UserDashboard = User.where("role = ?", "Student").order('created_at desc')
    @TeacherUser = User.where("role = ?", "Teacher").order("created_at desc")
    @MonthlyUser =  @UserDashboard.where("created_at >= ?", 1.month.from_now )
    @WeeklyUser =  @MonthlyUser.where("created_at >= ?", 1.week.from_now )
    @DailyUser =  @WeeklyUser.where("created_at >= ?", 1.day.from_now )
    @CourseDashboard = Course.all
  end 

  private
    def cityEreas
      @city_ereas = CityErea.all
    end
end
