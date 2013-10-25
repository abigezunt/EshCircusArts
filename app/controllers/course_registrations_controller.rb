class CourseRegistrationsController < ApplicationController
  before_action :set_course_registration, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! #unless user_signed_in? 
  
  # GET /course_registrations
  # GET /course_registrations.json
  def index
  end

  # GET /course_registrations/1
  # GET /course_registrations/1.json
  def show
    @course_registrations = CourseRegistration.where(user_id: current_user.id)
  end

  # GET /course_registrations/new
  def new
    @sessions = SevenWeekSession.all.future
    @courses = Course.all.future
    @course_registration = CourseRegistration.new
  end

  # GET /course_registrations/1/edit
  def edit
    @equivalent_courses = Course.all.future.equivalent(@course_registration.course.one_time_price)
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
        format.html { redirect_to @course_registration, notice: 'Registration successfully updated.  Pay now to reserve your spot.' }
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
      format.html { redirect_to new_charge_path}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_registration
      @course_registration = CourseRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_registration_params
      params.require(:course_registration).permit(:user_id, :course_id, :sub, :seven_week_session_id, :price, :paid, :comments)
    end
    
end
