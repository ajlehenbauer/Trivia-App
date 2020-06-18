module QuestionsHelper
    
    def question_creator
        if @question.creator.nil?
            return ""
        end
        @question.creator
    end
    def get_all
        @questions = Question.all
    end
    def rand_id
        Question.order('RANDOM()').first.id
    end
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
