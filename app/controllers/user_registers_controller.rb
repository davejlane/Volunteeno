class UserRegistersController < ApplicationController
  before_action :set_user_register, only: [:show, :edit, :update, :destroy]

  # GET /user_registers
  # GET /user_registers.json
  def index
    @user_registers = UserRegister.all
  end

  # GET /user_registers/1
  # GET /user_registers/1.json
  def show
  end

  # GET /user_registers/new
  def new
    @user_register = UserRegister.new
  end

  # GET /user_registers/1/edit
  def edit
  end

  # POST /user_registers
  # POST /user_registers.json
  def create
    @user_register = UserRegister.new(user_register_params)

    respond_to do |format|
      if @user_register.save
        format.html { redirect_to @user_register, notice: 'User register was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_register }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_registers/1
  # PATCH/PUT /user_registers/1.json
  def update
    respond_to do |format|
      if @user_register.update(user_register_params)
        format.html { redirect_to @user_register, notice: 'User register was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_registers/1
  # DELETE /user_registers/1.json
  def destroy
    @user_register.destroy
    respond_to do |format|
      format.html { redirect_to user_registers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_register
      @user_register = UserRegister.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_register_params
      params.require(:user_register).permit(:name, :email, :duration_staying, :eventID, :coming)
    end
end
