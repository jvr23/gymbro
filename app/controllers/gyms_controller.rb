class GymsController < ApplicationController
  before_action :set_gym, only: %i[ show edit update destroy ]
  # before_action :check_gym, only: %i[ edit update destroy ]
  # before_action :my_gyms, only: %i[ index ]

  # GET /gyms or /gyms.json
  def index
    @gyms = policy_scope(Gym)
  end

  # GET /gyms/1 or /gyms/1.json
  def show
  end

  # GET /gyms/new
  def new
    @gym = authorize Gym.new
  end

  # GET /gyms/1/edit
  def edit
  end

  # POST /gyms or /gyms.json
  def create
    @gym = authorize Gym.new(gym_params)

    respond_to do |format|
      if @gym.save
        format.html { redirect_to gym_url(@gym), notice: "Gym was successfully created." }
        format.json { render :show, status: :created, location: @gym }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gym.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gyms/1 or /gyms/1.json
  def update
    respond_to do |format|
      if @gym.update(gym_params)
        format.html { redirect_to gym_url(@gym), notice: "Gym was successfully updated." }
        format.json { render :show, status: :ok, location: @gym }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gym.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gyms/1 or /gyms/1.json
  def destroy
    @gym.destroy

    respond_to do |format|
      format.html { redirect_to gyms_url, notice: "Gym was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym
      # redirect_to gyms_path unless (user_is_owner? && user_own_gym params[:id])|| user_is_admin?
      @gym = Gym.find(params[:id])
    end

    # def set_gym
    #   if current_user.account.name != "owner" || current_user.account.name != "owner"
    #     redirect_to gyms_path
    #   end
    #   @gym = Gym.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    # def gym_params
    #   params.require(:gym).permit(:name, :address, :opens, :closes)
    # end

    # def my_gyms
    #   if user_is_owner?
    #     @gyms = Gym.where(user_id: current_user.id)
    #   else
    #     @gyms = Gym.all
    #   end
    # end
end
