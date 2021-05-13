require "sinatra"
require "mysql2"

get '/' do
    client = Mysql::Client.new(host: 'localhost', username:'dbuser',passward:'dbuser', dateabase:'booklist', encoding: 'uft8')
    @records = client.query("SELECT *FROM books ORDER BY created_at DESC")
    erb :booklist
end

post '/' do
    book_title = params['book_title']
    statement = client.prepare('INSERT INTO books (book_title) VALUES(?)')
    statement.execute.query("SELECT*FROM books ORDER BY created_at DESC")
    
    @records = client.query("SELECT * FROM books ORDER BY created_at DESC")
    
    erb :booklist
end