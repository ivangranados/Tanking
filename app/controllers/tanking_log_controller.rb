class TankingLogController < ApplicationController
  def new
    @tanking_log = TankingLogs.new
    @tanking_log.car_id = params[:id]
  end

  def create
    @tanking_log = TankingLogs.new(params[:tanking_log])
    
    if @tanking_log.save
      flash[:notice] = "Tankeo Guardado"
      redirect_to (tanking_log_index_path)
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
