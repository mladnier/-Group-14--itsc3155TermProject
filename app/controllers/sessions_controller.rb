class SessionsController < ApplicationController
  def new
  end
  
  def create
    
    dog = Dog.find_by(email: params[:session][:email].downcase)
    if dog && dog.authenticate(params[:session][:password])
    
    else
    flash[:danger] = 'Invalid email/password combination'
    render 'new'
    end
  
  end
  
  def destroy
  end
end

