class Post

  attr_accessor :id, :title, :view_count, :content, :account_id

  def initialize(title = nil, content = nil, view_count= nil,
                 account_id = nil, id = nil)
   @title = title ; @content = content ; @view_count = view_count
   @account_id = account_id ; @id = id
  end

  def ==(other)
    [@title, @content, @view_count, @account_id, @id] == [
     other.title, other.content, other.view_count, other.account_id,
     other.id]
  end
end