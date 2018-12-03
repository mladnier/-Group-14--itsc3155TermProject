class MatchesController < ApplicationController
    
    def index
      
       @currentdog = Dog.find_by(@current_user_id)
       @currentdogid =  @currentdog.id
       
       loop do 
             @mycurrentmatch = Dog.find_by_id(1+rand(Dog.count))
             @mymatchid = @mycurrentmatch.id
            
             break if @mymatchid != @currentdogid && !(Match.exists?(:dogtwo => @mymatchid ))

        end
    
    end
    
    
    
    def create 
        @match = Match.create(match_params)
       if @match.save
        redirect_to dog_matches_path
        
       else
        render 'new'
       
       end
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

