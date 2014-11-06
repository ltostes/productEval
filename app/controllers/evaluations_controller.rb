class EvaluationsController < ApplicationController
  before_action :get_evaluation, only: [:show, :edit, :update, :destroy]
  
  def index
    @evaluations = Evaluation.all
    respond_to do |format|
      format.html #show.html.erb
      format.xml { render xml: @evaluations}
    end
  end

  def show 
    respond_to do |format|
      format.html #show.html.erb
      format.xml { render xml: @evaluation}
    end
  end

  def new
    @evaluation = Evaluation.new
    @customer = Customer.find(2)
    pcs = Array.new
    ProductCharacteristic.all.each do |pc|
      if pc.product.customer == @customer
        if pc.characteristic.customer == @customer
          pcs.push(pc)
        end
      end
    end
    @evaluation.user = User.find(1)
    
    @characteristics = Array.new 
    @products = Array.new 
    pcs.each do |pc|
       if !(@products.include?(pc.product))
           @products.push(pc.product)
       end 
       if !(@characteristics.include?(pc.characteristic))
          @characteristics.push(pc.characteristic)
       end 
    end 
  end

  def edit
    
  end

  def create
    
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.product_characteristic = get_pc
    @evaluation.user = User.find(1)
    
    respond_to do |format|
      if @evaluation.save
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation }
      else
        format.html { render :new }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end
  
  def get_evaluation
    @evaluation = Evaluation.find(params[:id])
  end
  
  def evaluation_params
    params.require(:evaluation).permit(:score, :comment)
  end
  
  def get_pc
    processed = params.require(:evaluation).permit(product_characteristic: [:product_id, :characteristic_id])
    
    return ProductCharacteristic.where(processed[:product_characteristic]).first
  end
  
end
