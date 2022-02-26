class Backoffice::StoresController < BackofficeController
  before_action :set_store, only: [:edit, :update, :show]
  
  def index
    @stores = Store.all 
    
    @stores = Store.order(:name).page params[:page]
  end
      
  def new
    @store = Store.new
  end  

  def show 
    @store = Store.find(params[:id])
  end 

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to backoffice_stores_path, notice: "Loja (#{@store.name}) cadastrado com sucesso!"
    else
      render :new
    end
  end
  
  def update
    if @store.update(store_params)
      redirect_to backoffice_stores_path, notice: "Loja (#{@store.name}) atualizado com sucesso! "
    else
      render :edit
    end
  end
  
  private
  
  def set_store
    @store = Store.find(params[:id])
  end
  
  def store_params
    params.require(:store).permit(:name,
      :coatofarms,
      :address,
      :neighborhood,
      :country,
      :state,
      :nation,
      :zipcode,
      :decreecreatingthestore,
      :foundationdate,
      :phone,
      :rite,
      :meeting,
      :potency,
      :numberstore,
      :venerable,
      :email,
      :note)
  end
end
