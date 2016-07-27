class VendingmachinesController < ActionController::Base
  
  def index
    @vendingmachines = Vendingmachine.all
  end
  
  def new
    @vendingmachine = Vendingmachine.new()
  end
  
  def create
    @vendingmachine = Vendingmachine.new(vendingmachine_params)
    #@vendingmachine.factory = Factory.first
    @vendingmachine.save
    redirect_to @vendingmachine
  end
  
  def show
    @vendingmachine = Vendingmachine.find(params[:id])
    @stockchecksheets = @vendingmachine.stockchecksheets
  end
  
  private 
    def vendingmachine_params
      params.require(:vendingmachine).permit(:title, :configuration, :factory_id)
    end
    
end