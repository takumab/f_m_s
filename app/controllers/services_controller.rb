class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_filter :authorize, only: [:edit, :destroy]

  # GET /services
  # GET /services.json
  def index
    @services = Service.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)
      if @service.save
         flash[:success] = 'Service was successfully created.'
         redirect_to @service  
      else
         render :new 
      end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    
      if @service.update(service_params)
        flash[:success] = 'Service was successfully updated.'
        redirect_to @service 
      else
         render :edit 
      end
    
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:name, :description, :image_url, :location_of_service)
    end
end
