class MainController < ApplicationController
  before_action :set_main, only: [:show, :edit, :update, :destroy]

  # GET /main
  # GET /main.json
  def index
    @main = Main.all
  end

  # GET /main/1
  # GET /main/1.json
  def show
  end

  # GET /main/new
  def new
    @main = Main.new
  end

  # GET /main/1/edit
  def edit
  end

  # POST /main
  # POST /main.json
  def create
    @main = Main.new(main_params)

    respond_to do |format|
      if @main.save
        format.html { redirect_to @main, notice: 'Main was successfully created.' }
        format.json { render action: 'show', status: :created, location: @main }
      else
        format.html { render action: 'new' }
        format.json { render json: @main.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main/1
  # PATCH/PUT /main/1.json
  def update
    respond_to do |format|
      if @main.update(main_params)
        format.html { redirect_to @main, notice: 'Main was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @main.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main/1
  # DELETE /main/1.json
  def destroy
    @main.destroy
    respond_to do |format|
      format.html { redirect_to main_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main
      @main = Main.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_params
      params.require(:main).permit(:title, :body)
    end
end
