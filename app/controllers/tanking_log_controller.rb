class TankingLogController < ApplicationController
  
  layout 'graphs'

  def new
    @tanking_log = TankingLogs.new
    @gas_stations = GasStation.find(:all, :order => 'name').map{|x| [x.name] + [x.id]}
    @tanking_log.car_id = params[:id]
    @tanking_log.date = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  end

  def create
    @tanking_log = TankingLogs.new(params[:tanking_log])
    
    if @tanking_log.save
      flash[:notice] = "Tankeo Guardado"
      redirect_to (tanking_log_index_path(:id => @tanking_log.car_id))
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
    
    @tanking_log = TankingLogs.where(:car_id => params[:id])
    @gas_stations = GasStation.find(:all)
  end
end
