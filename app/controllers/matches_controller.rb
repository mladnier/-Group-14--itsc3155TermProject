class MatchesController < ApplicationController
    
    def index
       @matches = Match.all
       @mycurrentmatch = Dog.find(1+rand(Dog.count))
       @mymatchid = @mycurrentmatch.id
    end
    
    
    def create
        @dog = Dog.find(params[:id])
        @match = @dog.matches.create(match_params)
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
        @dog = Dog.find(params[:id])
        @match = @dog.matches.find(params[:id])
        @matct.destroy
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
        params.permit(:dog_id, :id)
    end 
   
end

