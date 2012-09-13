class CarsController < ApplicationController
  def index
    if user_signed_in?   
    @cars = Car.where(:user_id => current_user.id)
    @user = current_user
    else 
    end 
  end

  def show
    @cars = Car.find(params[:id])
  end

  def edit
    @cars = Car.find(params[:id])
  end

  def update
    @cars = Car.find(params[:id])
    if @cars.update_attributes(params[:cars])
      flash[:notice] = "Auto actualizado exitosamente"
      redirect_to (cars_index_path)
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "edit"
    end
  end

  def destroy
    TankingLogs.where(:car_id => params[:id]).destroy_all
    Car.find(params[:id]).destroy
    flash[:notice] = "Auto borrado exitosamente"
    redirect_to (root_path)
  end

  def new
    @cars = Car.new
    
  end

  def create
    @cars = Car.new(params[:cars])
    @cars.user_id = current_user
    if @cars.save
      flash[:notice] = "Auto creado exitosamente"
      redirect_to (cars_index_path)
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "new"
    end
    
  end

  
end
  