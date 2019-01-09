class FrameworksController < ApplicationController
    before_action :set_framework, only: [:show, :edit, :update]
    
    def new
      @framework = Framework.new
    end
    
    def create
      @framework = Framework.new(framework_params)
  
      respond_to do |format|
        if @framework.save
          format.html { redirect_to @framework, notice: 'Framework was successfully created.' }
          format.json { render :show, status: :created, location: @framework }
        else
          format.html { render :new }
          format.json { render json: @framework.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def edit
      
    end
    
    def update
      respond_to do |format|
        if @framework.update(framework_params)
          format.html { redirect_to @framework, notice: 'Framework was successfully updated.' }
          format.json { render :show, status: :created, location: @framework }
        else
          format.html { render :new }
          format.json { render json: @framework.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def show
    end
    
    def index
      @frameworks = Framework.all
    end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_framework
      @framework = Framework.find(params[:id])
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def framework_params
      params.require(:framework).permit(:name, resource_ids: [])
    end
    
  end