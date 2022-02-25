class Backoffice::BalancesheetsController < BackofficeController
  before_action :set_balancesheet, only: [:edit, :update]

  def index
    @balancesheets = Balancesheet.all 
    
    @balancesheets = Balancesheet.order(:number).page params[:page]
  end
    
  def new
    @balancesheet = Balancesheet.new
  end  
  
  def create
    @balancesheet = Balancesheet.new(balancesheet_params)
    if @balancesheet.save
      redirect_to backoffice_balancesheets_path, notice: "Balancete (#{@balancesheet.number}) cadastrado com sucesso!"
    else
      render :new
    end
  end

  def update
    if @balancesheet.update(balancesheet_params)
      redirect_to backoffice_balancesheets_path, notice: "Balancete (#{@balancesheet.number}) atualizado com sucesso! "
    else
      render :edit
    end
  end

  private

  def set_report
    @balancesheet = Balancesheet.find(params[:id])
  end

  def balancesheet_params
    params.require(:balancesheet).permit(:number, :date, :resume, :balancheetpdf)
  end
end
