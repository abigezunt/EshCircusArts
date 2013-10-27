class SevenWeekSessionsController < ApplicationController
  before_action :set_seven_week_session, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  
  def index
    @seven_week_sessions = SevenWeekSession.all.order("start_date ASC")
  end

  def show
    @course_registration = CourseRegistration.new
  end

  def new
    @seven_week_session = SevenWeekSession.new
  end

  def edit
  end

  def create
    @seven_week_session = SevenWeekSession.new(seven_week_session_params)
    respond_to do |format|
      if @seven_week_session.save
        format.html { redirect_to @seven_week_session, notice: 'Seven-Week Session was successfully created.' }
        format.json { render action: 'show', status: :created, location: @seven_week_session }
      else
        format.html { render action: 'new' }
        format.json { render json: @seven_week_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seven_week_sessions/1
  # PATCH/PUT /seven_week_sessions/1.json
  def update
    respond_to do |format|
      if @seven_week_session.update(seven_week_session_params)
        format.html { redirect_to @seven_week_session, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @seven_week_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seven_week_sessions/1
  # DELETE /seven_week_sessions/1.json
  def destroy
    @seven_week_session.destroy
    respond_to do |format|
      format.html { redirect_to seven_week_sessions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seven_week_session
      @seven_week_session = SevenWeekSession.find(params[:id])
      @instructors = @seven_week_session.instructor_ids.map do |id|
        User.find(id)
      end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seven_week_session_params
      params["seven_week_session"]["instructor_ids"].delete("")
      params["seven_week_session"]["instructor_ids"].map! {|x| x.to_i }
      params.require(:seven_week_session).permit(:name, :start_date, :start_time, :end_time, :end_date, :user_ids, :discipline_id, :registration_ids, :number_of_sessions, :price, :drop_in_price, :level, :description, :discipline, :instructor_ids => [])
    end
end
