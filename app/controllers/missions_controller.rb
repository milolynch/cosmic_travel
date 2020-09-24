class MissionsController < ApplicationController
  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.create(mission_params)
    redirect_to scientists_path
  end

  private

  def mission_params
    params.require(:mission).permit(:name, :scientist_id, :planet_id)
  end
end
