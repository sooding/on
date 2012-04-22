class SessionsController < ApplicationController

   def new
   end

   def create
	   company = Company.find_by_name(params[:session][:name])
	   #if company && company.authenticate(params[:session][:name])
		   sign_in company
		  redirect_to company 
	   #else 
                   #flash.now[:error] = 'Invalid email/password combination'
		   #render 'new'
	   #end
		 
   end

   def destroy
   end






end
