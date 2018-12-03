class MatchesController < ApplicationController
    
    def index
        
       
       @currentdog = Dog.find_by(@current_user_id)
       @currentdogid =  @currentdog.id
       @pervousmatches = Match.all
       
     
       
    #   Match.select("dogtwo").where(dogone = '@currentdogid')
       
    #   Match.where(dogtwo: = @currentdogid)
       @count = Dog.count
       @i = 0 
       loop do 
          
             @mycurrentmatch = Dog.find_by_id(1+rand(Dog.count))
             @mymatchid = @mycurrentmatch.id
            
            break if @mymatchid != @currentdogid && !(Match.exists?(:dogtwo => @mymatchid ))
            break if @i > @count
            
            @i = @i+1
        end
      
        
          @mymatched = Array.new
      
       @pervousmatches.each do |f|
                if f.dogone = @current_user_id
                    @pervousmatches.each do |x|
                       if x.dogtwo = @current_user_id
                           @mymatched.push(x)
                        
                       end
                 end
                end
                
    end
        
    
    end
    
    
    def create 
        @match = Match.create(match_params)
        if @match.save
            redirect_to dog_matches_path
         else
        render 'index'
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

