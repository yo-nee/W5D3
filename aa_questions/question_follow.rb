require_relative 'questions_db.rb'

class Question_follow


 def self.find_by_user(user_id)
    questions = QuestionsDBConnection.instance.execute(<<-SQL, user_id)
    SELECT
        *
    FROM
        questions

    WHERE
        user_id = ?
        
    SQL
 end

    # def initialize


end