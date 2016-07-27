class FactoriesController < ActionController::Base

  def new
    @factory = Factory.new()
  end
  
  def create
    @factory = Factory.new(factory_params)
    @factory.save
    redirect_to @factory
    
  end

  def index
    @factories = Factory.all
  end
  
  def show
    @factory = Factory.find(params[:id])
  end

  
  
  private 
    def factory_params
      params.require(:factory).permit(:name, :address)
    end

end
