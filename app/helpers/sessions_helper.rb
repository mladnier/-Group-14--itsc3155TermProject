module SessionsHelper
    def log_in(dog)
    session[:dog_id] = dog.id
    end
    
    def current_user
    if session[:dog_id]
      @current_dog ||= Dog.find_by(id: session[:dog_id])
    end
    end
  
  def log_out
    session.delete(:dog_id)
    @current_user = nil
  end
    
end
