require_relative "questions_db.rb"

class Replies
    def self.find_by_id(id)
       reply_info = QuestionsDBConnection.instance.execute(<<-SQL, id)
       SELECT
        *
       FROM
        replies
       WHERE
        replies.id = ?  
       SQL
       Replies.new(reply_info.first)
    end
end
