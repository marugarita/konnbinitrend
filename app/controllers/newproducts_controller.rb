class NewproductsController < ApplicationController
  before_action :set_newproduct, only: [:show, :edit, :update, :destroy]

  # GET /newproducts
  # GET /newproducts.json
  def index
    @newproducts = Newproduct.all
  end

  # GET /newproducts/1
  # GET /newproducts/1.json
  def show
  end

  # GET /newproducts/new
  def new
    @newproduct = Newproduct.new
  end

  # GET /newproducts/1/edit
  def edit
  end

  # POST /newproducts
  # POST /newproducts.json
  def create
    @newproduct = Newproduct.new(newproduct_params)

    respond_to do |format|
      if @newproduct.save
        format.html { redirect_to @newproduct, notice: 'Newproduct was successfully created.' }
        format.json { render :show, status: :created, location: @newproduct }
      else
        format.html { render :new }
        format.json { render json: @newproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newproducts/1
  # PATCH/PUT /newproducts/1.json
  def update
    respond_to do |format|
      if @newproduct.update(newproduct_params)
        format.html { redirect_to @newproduct, notice: 'Newproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @newproduct }
      else
        format.html { render :edit }
        format.json { render json: @newproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newproducts/1
  # DELETE /newproducts/1.json
  def destroy
    @newproduct.destroy
    respond_to do |format|
      format.html { redirect_to newproducts_url, notice: 'Newproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newproduct
      @newproduct = Newproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newproduct_params
      params.require(:newproduct).permit(:products_name, :stor_name：string, :release_date)
    end
end
