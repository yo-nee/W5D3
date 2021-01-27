
class User

def self.find_by_id

end

def self.find_by_name(fname, lname)
    id = QuestionsDBConnection.instance.execute (<<-SQL, user_id)
        SELECT id FROM users
    SQL    
end

end