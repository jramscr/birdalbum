class QuantityEggsController < ApplicationController
  load_and_authorize_resource
  before_action :set_quantity_egg, only: [:show, :edit, :update, :destroy]

  # GET /quantity_eggs
  # GET /quantity_eggs.json
  def index
    @quantity_eggs = QuantityEgg.all
    respond_to do |f|
      f.html
      f.csv { render text: @quantitys.to_csv }
      f.xls
    end
  end

  # GET /quantity_eggs/1
  # GET /quantity_eggs/1.json
  def show
  end

  # GET /quantity_eggs/new
  def new
    @quantity_egg = QuantityEgg.new
  end

  # GET /quantity_eggs/1/edit
  def edit
  end

  # POST /quantity_eggs
  # POST /quantity_eggs.json
  def create
    @quantity_egg = QuantityEgg.new(quantity_egg_params)

    respond_to do |format|
      if @quantity_egg.save
        format.html { redirect_to @quantity_egg, notice: 'Quantity egg was successfully created.' }
        format.json { render :show, status: :created, location: @quantity_egg }
      else
        format.html { render :new }
        format.json { render json: @quantity_egg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quantity_eggs/1
  # PATCH/PUT /quantity_eggs/1.json
  def update
    respond_to do |format|
      if @quantity_egg.update(quantity_egg_params)
        format.html { redirect_to @quantity_egg, notice: 'Quantity egg was successfully updated.' }
        format.json { render :show, status: :ok, location: @quantity_egg }
      else
        format.html { render :edit }
        format.json { render json: @quantity_egg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quantity_eggs/1
  # DELETE /quantity_eggs/1.json
  def destroy
    @quantity_egg.destroy
    respond_to do |format|
      format.html { redirect_to quantity_eggs_url, notice: 'Quantity egg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quantity_egg
      @quantity_egg = QuantityEgg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quantity_egg_params
      params.require(:quantity_egg).permit(:description)
    end
end
