module QuestionsHelper
    
    def increment_rep(username)
        @q = User.find_by(name: username)
        if !@q.nil? && username != current_user.name
            if @q.reputation.nil?
                @q.update_attribute(:reputation,10)
            else
                @q.update_attribute(:reputation,@q.reputation + 10)
            end
            @q.save
        end
        
      end
end
