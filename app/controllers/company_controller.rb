class CompanyController < ApplicationController
  def signup
      @company = Company.new
  end

  def create
	  @company = Company.new(params[:company])

	  redirect_to signup_path
  end

  def show
	  @Company =Company.find(1)
  end
end

