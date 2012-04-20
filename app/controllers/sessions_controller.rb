class SessionsController < ApplicationController

   def new
   end

   def create
	   company = Company.find_by_name(params[:session][:name])
	   if company && company.authenticate(params[:session][:password])
		   #redirect_to 
	   else 
                   flash[:error] = 'Invalid email/password combination'
		   render 'new'
	   end
		 
   end

   def destroy
   end






end
