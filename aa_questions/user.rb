require_relative "questions_db.rb"
require_relative 'questions.rb'
require_relative 'question_follow.rb'
require_relative 'question_likes.rb'
require_relative 'question_replys.rb'
require 'sqlite3'

class User
    attr_reader :id
    attr_accessor :fname, :lname

    def self.find_by_id(id)
        
        user_info = QuestionsDBConnection.instance.execute(<<-SQL, id: id)
            SELECT
                *
            FROM
                users
            WHERE
                users.id = ?
        SQL
        user_info.nil? ? nil : User.new(user_info.first)
    end

    def self.find_by_name(fname, lname)
        user_info = QuestionsDBConnection.instance.execute(<<-SQL, fname, lname)
            SELECT
                *
            FROM
                users
            WHERE
                users.fname = ? AND users.lname = ?
        SQL
        User.new(user_info.first)
    end

    def initialize(users)
        @id = users['id']
        @fname = users['fname']
        @lname = users['lname']
    end

    # def like

    # end
    # def upload_question

    # end
    # def save

    # end
    
end