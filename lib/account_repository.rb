class AccountRepository

  def all
    query = "SELECT * FROM accounts"
    records = DatabaseConnection.exec_params(query, [])
    records.map { |record| convert_to_account(record) }
  end

  def find(id)
    query = "SELECT * FROM accounts WHERE id = $1"
    record = DatabaseConnection.exec_params(query, [id])[0]
    convert_to_account(record)
  end

  def create(account)
    query = "INSERT INTO accounts (username, email_address) " \
    "VALUES ($1, $2)"
    DatabaseConnection.exec_params(query, 
    [account.username, account.email_address])
  end

  def delete

  end

  private

  def convert_to_account(record)
    Account.new(record["username"],
    record["email_address"], 
    record["id"].to_i)
  end

end