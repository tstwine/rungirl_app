class DistancesController < ApplicationController
  def index
    @distances = Distance.all
  end 

  def show
    @distance = Distance.find(params[:id])
  end

  def new
    @distance = Distance.new
  end

  def create
    @distance = Distance.create(distance_params)
    if @distance.save
      redirect_to @distance
    else
      render :new
    end
  end

  def edit
    @distance = Distance.find(params[:id])
  end

  def update
    @distance = Distance.find(params[:id])
    
    if @distance.update(distance_params)
      redirect_to @distance
    else
      render :edit
    end
  end

  def destroy
    @distance = Distance.find(params[:id])
    @distance.destroy
    redirect_to distances_path
  end

private

  def distance_params
    params.require(:distance).permit(:date, :time)
  end
end