class StockchecksheetsController < ActionController::Base

  def index
    @sheet = Stockchecksheet.all
  end
  
  def create
    @sheet = Stockchecksheet.new(stockchecksheet_params)
    @sheet.save
    redirect_to @sheet
  end
  
  def show
    @sheet = Stockchecksheet.find(params[:id])
  end
  
  def new
    @sheet = Stockchecksheet.new()
    @vendingmachine = @sheet.vendingmachine_id
  end
  
  def update
    @sheet = Stockchecksheet.find(params[:id])
    if @sheet.update(stockchecksheet_params)
      redirect_to @sheet
    else
      render 'show'
    end
  end
  
  private 
    def stockchecksheet_params
      params.require(:stockchecksheet).permit(:item1, :item2, :item3, :item4, :item5, 
                                              :item11, :item12, 
                                              :item21, :item22,
                                              :item31, :item32,
                                              :item41, :item42,
                                              :item51, :item52,
                                              :vendingmachine_id)
    end
    
    
    
end