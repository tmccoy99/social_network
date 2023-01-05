require_relative "database_connection.rb"
require_relative "post.rb"

class PostRepository
  
  def all
    query = "SELECT * FROM posts"
    records = DatabaseConnection.exec_params(query, [])
    records.map { |record| convert_to_post(record) }
  end

  def find(id)
    query = "SELECT * FROM posts WHERE id = $1"
    record = DatabaseConnection.exec_params(query, [id])[0]
    convert_to_post(record)
  end

  def create(post)
    query = "INSERT INTO posts (title, content, view_count, account_id) " \
    "VALUES ($1, $2, $3, $4)"
    DatabaseConnection.exec_params(query, 
    [post.title, post.content, post.view_count, post.account_id])
  end

  def delete(id)
    query = "DELETE FROM posts WHERE id = $1"
    DatabaseConnection.exec_params(query, [id])
  end

  private

  def convert_to_post(record)
    Post.new(record["title"],
    record["content"],
    record["view_count"].to_i,
    record["account_id"].to_i,
    record["id"].to_i)
  end

end