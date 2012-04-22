class CompaniesController < ApplicationController
  def signup
      @company = Company.new
  end

  def create
	  @company = Company.create(params[:company])

	  redirect_to root_path
  end

  def show
	  @Company =Company.find(params[:id])
  end
end

