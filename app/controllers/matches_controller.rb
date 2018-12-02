class MatchesController < ApplicationController
    
    def index
        
       @mycurrentmatch = Dog.find_by_id(1+rand(Dog.count))
       
       
       
       @mymatchid = @mycurrentmatch.id
       @currentdog = Dog.find_by(@current_user_id)
       @matches = @currentdog.matches
       @matchids = @currentdog.match_ids
    end
    
    def create 
        
    end
   
    
    def destroy
        
    end
    
    def show
        
    end


private
    def match_params
        params.permit(:matchone, :matchtwo)
    end 
   
end

