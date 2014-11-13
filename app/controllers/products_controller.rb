class ProductsController < ApplicationController
  
  before_action :get_product, only: [:show, :edit, :update, :destroy, :evaluate]
  
  def index
    @products = Product.all
    respond_to do |format|
      format.html #show.html.erb
      format.xml { render xml: @products}
    end
  end

  def show 
    respond_to do |format|
      format.html #show.html.erb
      format.xml { render xml: @product}
    end
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    @product.customer = Customer.find(2)
    
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

  def update
  end

  def destroy
  end
  
  def get_product
    @product = Product.find(params[:id])
  end
  
  def product_params
    params.require(:product).permit(:name, :description)
  end
  
  def evaluate
    @evaluations = Array.new
    
    @product.product_characteristics.each do |pc|
      @evaluations.push(Evaluation.new(product_characteristic: pc))
    end
  end
  
  def create_evaluations
    params.keep_if {|key, value| key.include? "evaluation"}
    params.permit!
    
    current_user = 1
    
    evs = Array.new
    params.values.each do |pe|
      evs.push(Evaluation.new(pe))
    end
    
    evs.each do |ev|
      ev.user = User.find(current_user)
      ev.save
    end
    
    @product = evs.first.product_characteristic.product
    
    respond_to do |format|
        format.html { render :show }
    end
  end
  
end
