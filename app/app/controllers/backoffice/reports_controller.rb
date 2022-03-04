class Backoffice::ReportsController < BackofficeController
  before_action :set_report, only: [:edit, :update]
  
  def index
    @reports = Report.all

    @reports = Report.order(:number).page params[:page]
  end
      
  def new
    @report = Report.new
  end  
   
  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to backoffice_reports_path, notice: "Boletim (#{@report.number}) cadastrado com sucesso!"
    else
      render :new
    end
  end
  
  def update
    if @report.update(report_params)
      redirect_to backoffice_reports_path, notice: "Boletim (#{@report.number}) atualizado com sucesso! "
    else
      render :edit
    end
  end
  
  private
  
  def set_report
    @reports = Report.find(params[:id])
  end
  
  def report_params
    params.require(:report).permit(:number, :date, :resume, :featured_reportpdf)
  end
end