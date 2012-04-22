class ContractorsController < ApplicationController
  before_filter :correct_contractor, only: [:edit, :update]
  
def signup
 @contractor = Contractor.new
 @title = "Sign up"
end

  def show
    @contractor = Contractor.find(params[:id])
    @title = @contractor.email
   end

  # GET /contractors/new
  # GET /contractors/new.json
  def new
    @contractor = Contractor.new
  end


  # POST /contractors
  # POST /contractors.json
  def create
    @contractor = Contractor.new(params[:contractor])
      if @contractor.save
        signin @contractor
        flash[:success] = "Sign up successful"
        redirect_back_or root_path
   end

  # PUT /contractors/1
  # PUT /contractors/1.json
  def update
    @contractor = Contractor.find(params[:id])
  end
end
end

>>>>>>> 35c839120efe3db2964a274f9946f74cd1d69282
