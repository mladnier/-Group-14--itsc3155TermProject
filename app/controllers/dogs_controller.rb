class DogsController < ApplicationController

    
    def index
         
    end
    
    def new
        @dog = Dog.new
    end
    
    def create
        @dog = Dog.new(dog_params)
        
       if @dog.save
           log_in @dog
           flash[:sucess] = "Welcome to Doggr!"
           redirect_to dogs_path
       else 
           render 'new'
       end
    end
    
    def show
        @dog = Dog.find(@current_user.id)
    end
    
end


private
    def dog_params
      params.require(:dog).permit(:email, :password, :name, :sex, :age, :bio) 
    end
