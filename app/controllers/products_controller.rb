class ProductsController < ApplicationController
  # before_action :load_and_authorize_resource
  # before_action :skip_authorize_resource, :only => [:new, :show]
  before_action :authenticate_user!, :except => [:show, :index]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  # GET /products
  # GET /products.json

  def assign_env_variable
    gon.stripe_key = ENV['PUBLISHABLE_KEY']
  end

  def index
    @products = Product.all
      if params[:search]
        @products = Product.search(params[:search]).order("created_at DESC")
      else
        @products = Product.all.order("created_at DESC")
      end
  end

  def title
    @title = "Products"
  end
  

  # GET /products/1
  # GET /products/1.json
  def show
    # @product.user = current_user
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    authorize! :edit, @product
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user = current_user
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    authorize! :update, @product
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    authorize! :destroy, @product
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:user_id, :product_name, :description, :quantity, :price, :category, :product_img, :shipping)
    end
end
