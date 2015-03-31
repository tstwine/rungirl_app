class RunnersController < ActionController::Base
	before_action :find_runner, except: [:index, :new, :create]

  #def index
  #  @runners = Runner.all.order(:first_name)
  #end

  def new
    @runner = Runner.new
  end

  def create
    @runner = Runner.new(runner_params)
    if @runner.save
      redirect_to @runner
    end
  end

  def show
    @runners = @runner.distances.order(:time)
  end

  def edit
    @runner = Runner.find(params[:id])
  end

  def update
    if @runner.update_attributes(runner_params)
      redirect_to @runner
    end
  end

  def destroy
    if @runner.destroy
      redirect_to runners_path
    end
  end

  private

  def find_runner
    @runner = Runner.find(params[:id])
  end

  def runner_params
    params.require(:runner).permit(:first_name, :last_name, :date)
  end
end
  