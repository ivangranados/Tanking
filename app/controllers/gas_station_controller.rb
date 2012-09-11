class GasStationController < ApplicationController
  def new
    @gas_station = GasStation.new
  end

  def create
    @gas_station = GasStation.new(params[:gas_station])
    
    if @gas_station.save
      flash[:notice] = "Estacion de Gasolina Creada Exitosamente"
      redirect_to (tanking_log_index_path(:id => params[:id]))
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "new"
    end

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end
end
