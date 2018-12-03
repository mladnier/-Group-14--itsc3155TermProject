class ChatsController < ApplicationController
  def new
    @chat = Chat.new
  end

  def create
     @match = Match.find(params[:id])
     @chat = @match.chats.create(chat_params)
     redirect_to render dog_match_chat(@chat)
  end
  
  def index
     @match = Match.find(params[:match_id])
     @dogone = @match.dogone
     @dogtwo = @match.dogtwo
     @dog = Dog.find(@dogone)
     @chat = Chat.find_by_id(@match.chat_id)
  end
  
  def show
   
    
  end
  
  def destroy
    
  end
end

private
def chat_params
    params.permit(:messages)
end

