class FaultsheetsController < ActionController::Base
  
  def new
    @faultsheet = Faultsheet.new()
  end
  
  def create
    @faultsheet = Faultsheet.new(faultsheet_params)
    @faultsheet.save
    redirect_to @faultsheet
    
  end
  
  def show
    @faultsheet = Faultsheet.find(params[:id])
  end
  
  private 
    def faultsheet_params
      params.require(:faultsheet).permit(:fault, :vendingmachine_id)
    end

end