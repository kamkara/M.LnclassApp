class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: %i[ show edit update destroy ]
  before_action :find_levels
  before_action :find_materials


  # GET /courses or /courses.json
  def index
   
  end

  # GET /courses/1 or /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses or /courses.json
  def create
    @course = current_user.courses.build(course_params)
    @course.teacher_name = current_user.full_name
    redirect_to root_path and return if @course.save
    render :new
  end
  
  # PATCH/PUT /courses/1 or /courses/1.json
  def update
    @course.teacher_name = current_user.full_name
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: "Vous avez ameliorer le document." }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: "Vous avez supprimer le document." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.friendly.find(params[:id])
    end
    
    def find_levels
      @levels = Level.all
    end

    def find_materials
      @materials = Material.all
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:title, :content, :slug, :level_name, :material_name, :user_id, :teacher_name, contentImg: [])
    end
end
