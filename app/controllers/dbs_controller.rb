class DbsController < ApplicationController
    before_action :set_db, only: [:show, :edit, :update]
    
    def new
      @db = Db.new
    end
    
    def create
      @db = Db.new(db_params)
  
      respond_to do |format|
        if @db.save
          format.html { redirect_to @db, notice: 'Db was successfully created.' }
          format.json { render :show, status: :created, location: @db }
        else
          format.html { render :new }
          format.json { render json: @db.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def edit
      
    end
    
    def update
      respond_to do |format|
        if @db.update(db_params)
          format.html { redirect_to @db, notice: 'Db was successfully updated.' }
          format.json { render :show, status: :created, location: @db }
        else
          format.html { render :new }
          format.json { render json: @db.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def show
    end
    
    def index
      @dbs = Db.all
    end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_db
      @db = Db.find(params[:id])
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def db_params
      params.require(:db).permit(:name, resource_ids: [])
    end
    
  end