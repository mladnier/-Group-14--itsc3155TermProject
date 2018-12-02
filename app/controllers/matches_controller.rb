class MatchesController < ApplicationController
    
    def index
       @matches = Match.all
       @mycurrentmatch = Dog.find(1+rand(Dog.count))
       @mymatchid = @mycurrentmatch.id
    end
    
    def new
        @match = Match.new
    end
    
    def create
     
        @dog = Dog.find(session[:current_user_id])
        @match = @dog.matches.create(match_params)
        @match.save
        redirect_to dog_matches_path(:current_user_id)
    
      
        # @match = Match.new(params[:mycurrentmatchId])
        # if @match.save
        #     redirect_to @match
        # else
        #     render 'index'
        # end
    end
    
     def show
        # @match = Match.find_by_id(params[:id])
        # @matcheddog = Dog.find_by_id(params[:id => @mymatchid])
     end


private
    def match_params
        params.require(:match).permit(:dog_id => @mymatchid)
    end
end


