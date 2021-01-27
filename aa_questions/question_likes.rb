require_relative "questions_db.rb"

class QuestionLike
    def self.find_by_id(id)
        likes = QuestionsDBConnection.instance.execute(<<-SQL, id)
        SELECT
            *
        FROM
            question_likes
        WHERE
            question_likes.id = ?
        SQL
        QuestionLike.new(likes.first)
    end
end