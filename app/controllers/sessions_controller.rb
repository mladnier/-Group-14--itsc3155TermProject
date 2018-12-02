class SessionsController < ApplicationController
  def new
  end
  
  def create
    @dog = Dog.find_by(email: params[:session][:email].downcase)
    if @dog && @dog.authenticate(params[:session][:password])
      log_in @dog
      redirect_to dogs_index_path
    else
    flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
    end
  
  end
  
  
  
  def destroy
    log_out
    redirect_to root_url
  end
end

