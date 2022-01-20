class DashboardController < ApplicationController
  before_action :cityEreas

  def index
    @UserDashboard = User.where("role = ?", "Student").order('created_at desc')
  end

  private
    def cityEreas
      @city_ereas = CityErea.all
    end
end
