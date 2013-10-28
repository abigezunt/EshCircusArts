class CourseRegistrationsController < ApplicationController
  before_action :set_course_registration, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! #unless user_signed_in? 
  
  # GET /course_registrations
  # GET /course_registrations.json
  def index
    @course_registrations = CourseRegistration.where(user_id: current_user.id).order("start_date ASC").current
  end

  # GET /course_registrations/1
  # GET /course_registrations/1.json
  def show
    @course_registrations = CourseRegistration.where(user_id: current_user.id).current
  end

  # GET /course_registrations/new
  def new
    @sessions = SevenWeekSession.future.where_user_not_registered(current_user)
    @courses = Course.future.where_user_not_registered(current_user)
    @course_registration = CourseRegistration.new
  end

  # GET /course_registrations/1/edit
  def edit
    if @course_registration.registerable_type == "Course"
      @equivalent_courses = Course.future.equivalent(@course_registration.registerable.one_time_price).where_user_not_registered(current_user)
    elsif @course_registration.registerable_type == "SevenWeekSession"
      @equivalent_courses = SevenWeekSession.future.equivalent(@course_registration.registerable.full_price)
    end
  end

  # POST /course_registrations
  # POST /course_registrations.json
  def create

    @course_registration = CourseRegistration.new(course_registration_params)
    respond_to do |format|
      if @course_registration.save
        format.html { render action: 'show', notice: "Registration successful! Want to register for another class?" }
        format.json { render action: 'show', status: :created, location: @course_registration }
      else
        format.html { render action: 'new' }
        format.json { render json: @course_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_registrations/1
  # PATCH/PUT /course_registrations/1.json
  def update
    respond_to do |format|
      if @course_registration.update(course_registration_params)
        format.html { redirect_to @course_registration, notice: 'Registration successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_registrations/1
  # DELETE /course_registrations/1.json
  def destroy
    @course_registration.destroy
    respond_to do |format|
      format.html { redirect_to course_registrations_path}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_registration
      @course_registration = CourseRegistration.find(params[:id])
    end

    def registerable_id
      params[(params[:registerable] + "_id").to_sym]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_registration_params
      params.require(:course_registration).permit(:user_id, :registerable_id, :course_id, :seven_week_session_id, :sub, :registerable_type, :price, :paid, :comments)
    end
    
end
