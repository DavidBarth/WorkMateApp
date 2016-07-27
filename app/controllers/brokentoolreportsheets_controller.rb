class BrokentoolreportsheetsController < ActionController::Base
  
  # new action creates a new ActiveRecord
  def new
    # @brokentoolreportsheet is a local variable
    @brokentoolreportsheet = Brokentoolreportsheet.new()
  end
  
  # create action saves the ActiveRecord data to DB
  def create
    @brokentoolreportsheet = Brokentoolreportsheet.new(tool_params)
    @brokentoolreportsheet.save
    
    #redirects to last recorded report for SFR7 for UC01
    redirect_to @brokentoolreportsheet
  end
  
  # show action finds and stores the record corresponding to the id
  def show
    @brokentoolreportsheet = Brokentoolreportsheet.find(params[:id])
  end
  
  # stores all the record in @brokentoolreportsheets variable
  def index
    @brokentoolreportsheets = Brokentoolreportsheet.all
  end
  
  # private method called in the create function 
  # defines the tool parameters
  private 
    def tool_params
      params.require(:brokentoolreportsheet).permit(:toolname, :toolfault, :toollocation)
    end
end
