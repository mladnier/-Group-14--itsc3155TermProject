class DogsController < ApplicationController
    
    def index
        @current_user = Dog.find_by_id(session[:current_user_id])
    end
    
    def new
        
    end
    
    def create
       
        @dog = Dog.new(dog_params)
        
        @dog.save
        redirect_to @dog
    end
    
    def show
        @dog = Dog.find(params[:id])
        
    end
    
end


private
    def dog_params
      params.require(:dog).permit(:email, :password, :name, :sex, :age, :bio) 
    end
