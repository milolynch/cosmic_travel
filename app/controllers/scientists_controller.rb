class ScientistsController < ApplicationController
  def index
    @scientists = Scientist.all
  end

  def show
    @scientist = Scientist.find(params[:id])
  end

  def new
    @scientist = Scientist.new
  end

  def create
    @scientist = Scientist.create(scientist_params)
    if @scientist.save
      redirect_to scientist_path(@scientist)
    else 
      render :new
    end
  end

  def edit
    @scientist = Scientist.find(params[:id])
  end

  def update
    @scientist = Scientist.find(params[:id])
    @scientist.update(scientist_params)
    redirect_to scientist_path(@scientist)
  end

  def destroy 
    scientist = Scientist.find(params[:id])
    scientist.destroy
    redirect_to scientists_path
  end

  private

  def scientist_params
    params.require(:scientist).permit(:name, :field_of_study)
  end
end
#customer = Customer.create(customer_params(:name))
#redirect_to customer_path(customer)