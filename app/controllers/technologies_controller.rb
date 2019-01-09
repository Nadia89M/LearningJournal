class TechnologiesController < ApplicationController
    before_action :set_technology, only: [:show, :edit, :update]
    
    def new
      @technology = Technology.new
    end
    
    def create
      @technology = Technology.new(technology_params)
  
      respond_to do |format|
        if @technology.save
          format.html { redirect_to @technology, notice: 'Technology was successfully created.' }
          format.json { render :show, status: :created, location: @technology }
        else
          format.html { render :new }
          format.json { render json: @technology.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def edit
      
    end
    
    def update
      respond_to do |format|
        if @technology.update(technology_params)
          format.html { redirect_to @technology, notice: 'Technology was successfully updated.' }
          format.json { render :show, status: :created, location: @technology }
        else
          format.html { render :new }
          format.json { render json: @technology.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def show
    end
    
    def index
      @technologies = Technology.all
    end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_technology
      @technology = Technology.find(params[:id])
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def technology_params
      params.require(:technology).permit(:name, resource_ids: [])
    end
    
  end