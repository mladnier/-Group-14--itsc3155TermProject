class MatchesController < ApplicationController
    
    def index
       @mycurrentmatch = Dog.find_by_id(1+rand(Dog.count))
       
       @mymatchid = @mycurrentmatch.id
       @currentdog = Dog.find_by(@current_user_id)
       @matches = @currentdog.matches
       @matchids = @currentdog.match_ids
    end
    
    
    def create
        @dog = Dog.find(params[:dog_id])
        @match = @dog.matches.create(:dog_id => @mymatchid )
        @match.save
        redirect_to dog_matches_path(params[:dog_id])
        
        Rails.logger.info(@match.errors.inspect) 
    
        # @match = Match.new(params[:mycurrentmatchId])
        # if @match.save
        #     redirect_to @match
        # else
        #     render 'index'
        # end
    end
    
    def destroy
        @dog = Dog.find_by(@current_user_id)
        @match = @dog.matches.find(@matchids)
        @match.destroy
        Rails.logger.info(@match.errors.inspect) 
        redirect_to dog_matches_path(params[:dog_id])
     end
    
     def show
       
        @match = Match.find(params[:id])
        # @match = Match.find_by_id(params[:id])
        # @matcheddog = Dog.find_by_id(params[:id => @mymatchid])
     end


private
    def match_params
        params.permit(:dog_id)
    end 
   
end

