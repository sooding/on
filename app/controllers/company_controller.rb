class CompanyController < ApplicationController
  def signup
      @company = Company.new
  end

  def create
	  @company = Company.create(params[:company])

	  redirect_to root_path
  end

  def show
<<<<<<< HEAD
	  @Company =Company.all
=======
	  @Company = Company.find(1)
>>>>>>> 12cdededfa2f91a1b50df119f4c8cfd1ca619a6a
  end
end

