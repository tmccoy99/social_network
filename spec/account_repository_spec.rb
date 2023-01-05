require "account"
require "account_repository"

describe AccountRepository do
  
  before(:each) do
    @account1 = Account.new('tmccoy', 'tmccoy@gmail.com', 1)
    @account2 = Account.new('great_account_name', 'great_email@talktalk.net', 2)
    @repo = AccountRepository.new

    sql = File.read("spec/account_test_data_seed.sql")
    connection = PG.connect({ host: '127.0.0.1', dbname: "social_network" })
    connection.exec(sql)
  end

  it "#all returns an array of account objects in accounts table" do
    expect(@repo.all).to eq [@account1, @account2]
  end

end