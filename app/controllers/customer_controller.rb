class CustomerController < ApplicationController
  def list
    @customers = Customer.all
  end

  def new
  end

  def edit
  end
end
