module QuestionsHelper
    
    def answer
        session["answer"]
    end

    def answer_true
        session["answer"]="true"
    end
    
    def answered_question?
        !@answer.blank?
    end


    def reset_question
        session.delete("answer")
    end

end
