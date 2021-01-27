
class User

    def self.find_by_id

    end

    def self.find_by_name(fname, lname)
        id = QuestionsDBConnection.instance.execute (<<-SQL, fname, lname)
            SELECT 
                id 
            FROM 
                users
            WHERE
                user.fname = fname AND user.lname = lname
        SQL    
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