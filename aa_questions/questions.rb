require_relative "./questions_db.rb"

class Questions
    def self.find_by_id(id)
        question = QuestionsDBConnection.instance.execute (<<-SQL, id)
        SELECT 
            *
        FROM 
            questions
        WHERE 
            questions.id = id
        SQL
        Question.new(id)
    end
    def initialize(title,body,user_id)
        @title = title
        @body = body
        @user_id = user_id
    end
end