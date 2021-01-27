require 'sqlite3'
require 'singleton'

class QuestionsDBConnection < SQLite3::Database
  include Singleton

#   def initialize
#     super('questions.db')
#     self.type_translation = true
#     self.results_as_hash = true
#   end
# end

    def self.open  #   def initialize
    @database = SQLite3::Database.new(DB_FILE)
    @database.results_as_hash = true
    @database.type_translation = true
  end

    def self.instance
    end

    def self.reset!
    end

    def self.execute()
    end

    def self.get_first_row()
    end

    def self.get_first_value()
    end

    def self.last_insert_row_id
    end