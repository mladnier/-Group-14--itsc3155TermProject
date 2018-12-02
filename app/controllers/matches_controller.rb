class MatchesController < ApplicationController
    
    def index
       @mycurrentmatch = Dog.find(1+rand(Dog.count))
    end
    
    def new
        
    end
    
    def create
        
    end
end
