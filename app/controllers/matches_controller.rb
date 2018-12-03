class MatchesController < ApplicationController
    
    def index
        
       @mycurrentmatch = Dog.find_by_id(1+rand(Dog.count))
       
       
       
       @mymatchid = @mycurrentmatch.id
       @currentdog = Dog.find_by(@current_user_id)
       @currentdogid =  @currentdog.id
       
    end
    
    def create 
        @match = Match.create(match_params)
        @match.save
    end
   
    
    def destroy
        
    end
    
    def show
    
    end


private
    def match_params
        params.permit(:dogone, :dogtwo)
    end 
   
end

