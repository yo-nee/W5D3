require_relative "./questions_db.rb"

class Questions
    def self.find_by_id(id)
        question = QuestionsDBConnection.instance.execute (<<-SQL, id)
        SELECT 
            *
        FROM 
            questions
        WHERE 
            id = ?
        SQL
        Question.new(question.first)
    end

    def initialize(questions)
        @title = questions['title']
        @body = questions['body']
        @user_id = questions['user_id']
    end
end