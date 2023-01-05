class AccountRepository

  def all
    query = "SELECT * FROM accounts"
    records = DatabaseConnection.exec_params(query, [])
    arr = records.map do |record|
      Account.new(record["username"],
      record["email_address"], 
      record["id"].to_i)
    end
    arr
  end

  def find

  end

  def create

  end

  def delete

  end

end