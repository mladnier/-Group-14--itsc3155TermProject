class DogsController < ApplicationController
    
    def index
        
    end
    
    def new
        
    end
    
    def create
        render plain: params[:dog].inspect
    end
    
end
