class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /courses
  # GET /courses.json

  # GET /courses/1
  # GET /courses/1.json
  def show
    @my_registration = CourseRegistration.where(user_id: current_user.id, registerable_id: @course.id, registerable_type: "Course").first
    @course_registration = CourseRegistration.new
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    
    @course = Course.new(course_params)
    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course }
      else
        format.html { render action: 'new' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])

      @instructors = @course.instructor_ids.map do |id|
        User.find(id)
      end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params["course"]["instructor_ids"].delete("")
      params["course"]["instructor_ids"].map! {|x| x.to_i }
      params.require(:course).permit(:name, :start_date, :start_time, :end_time, :user_ids, :seven_week_session_id, :discipline_id, :registration_ids, :number_of_sessions, :price, :drop_in_price, :level, :description, :discipline, :instructor_ids => [])
    end
end
