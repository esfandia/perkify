class ProductPerksController < ApplicationController
  before_action :set_perks
  
  # GET /products/1/perks/new
  def new
    @perk = @perks.build
  end

  # POST /products/1/perks
  # POST /products/1/perks.json
  def create
    @perk = @perks.build(perk_params)

    respond_to do |format|
      if @perk.save
        format.html { redirect_to @perk, notice: 'Perk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @perk }
      else
        format.html { render action: 'new' }
        format.json { render json: @perk.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perks
      @product = Product.find(params[:product_id])
      @perks = @product.perks 

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perk_params
      params.require(:perk).permit(:product_id, :description)
    end  
  
end
