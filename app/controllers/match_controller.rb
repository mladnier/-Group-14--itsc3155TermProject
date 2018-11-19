class MatchController < ApplicationController
    
    def index
        @dog = Dog.find(params[:dog_id])  
    end
    
    def new
        
    end
    
    def create
        
    end
end
