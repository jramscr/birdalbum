class BeakTypesController < ApplicationController
  load_and_authorize_resource
  before_action :set_beak_type, only: [:show, :edit, :update, :destroy]

  # GET /beak_types
  # GET /beak_types.json
  def index
    @beak_types = BeakType.all
    respond_to do |f|
      f.html
      f.csv { render text: @beak_types.to_csv }
      f.xls
    end
  end

  # GET /beak_types/1
  # GET /beak_types/1.json
  def show
  end

  # GET /beak_types/new
  def new
    @beak_type = BeakType.new
  end

  # GET /beak_types/1/edit
  def edit
  end

  # POST /beak_types
  # POST /beak_types.json
  def create
    @beak_type = BeakType.new(beak_type_params)

    respond_to do |format|
      if @beak_type.save
        format.html { redirect_to @beak_type, notice: 'Beak type was successfully created.' }
        format.json { render :show, status: :created, location: @beak_type }
      else
        format.html { render :new }
        format.json { render json: @beak_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beak_types/1
  # PATCH/PUT /beak_types/1.json
  def update
    respond_to do |format|
      if @beak_type.update(beak_type_params)
        format.html { redirect_to @beak_type, notice: 'Beak type was successfully updated.' }
        format.json { render :show, status: :ok, location: @beak_type }
      else
        format.html { render :edit }
        format.json { render json: @beak_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beak_types/1
  # DELETE /beak_types/1.json
  def destroy
    @beak_type.destroy
    respond_to do |format|
      format.html { redirect_to beak_types_url, notice: 'Beak type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beak_type
      @beak_type = BeakType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beak_type_params
      params.require(:beak_type).permit(:name)
    end
end
