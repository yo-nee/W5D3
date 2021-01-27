
class User

    def self.find_by_id

    end

    def self.find_by_name(fname, lname)
        id = QuestionsDBConnection.instance.execute (<<-SQL, user_id)
            SELECT 
                id 
            FROM 
                users
            WHERE
                user.fname = fname 
                user.lname = lname
        SQL    
    end

    def initialize
        @id = id
        @fname = fname
        @lname = lname
    end

    def like

    end
    def upload_question

    end
    def save

    end
    
end