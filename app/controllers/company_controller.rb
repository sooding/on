class CompanyController < ApplicationController
  def signup
      @company = Company.new
  end

  def create
	  @company = Company.create(params[:company])

	  redirect_to root_path
  end

  def show

	  @Company =Company.all


  end
end

