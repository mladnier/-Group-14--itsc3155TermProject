module SessionsHelper
    def log_in(dog)
    session[:dog_id] = dog.id
    end
end
