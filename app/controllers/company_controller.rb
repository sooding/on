class CompanyController < ApplicationController
  def signup
      @company = Company.new
  end

  def create
	  @company = Company.new(params[:company])
        if @company.save
		sign_in @company
		flash[:success] = "Welcome to the ContractON!"
	  redirect_to @company
	else
		render 'new'
  end
  end

  def show

	  @Company =Company.all


  end
end

