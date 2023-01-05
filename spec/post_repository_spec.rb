require "post"
require "post_repository"

describe PostRepository do

  before(:each) do
    @post1 = Post.new('Summer 2022', 
    'OMG glasto was amazing', 2, 1, 1)
    @post2 = Post.new('Spring 2022',
    'Exams are like so stressful', 10, 1, 2)
    @repo  = PostRepository.new

    sql = File.read("spec/test_data_seed.sql")
    connection = PG.connect({ host: '127.0.0.1', dbname: "social_network" })
    connection.exec(sql)
  end

  it "#all returns an array of post objects in posts table" do
    expect(@repo.all).to eq [@post1, @post2]
  end


  it "#find is given integer argument and returns post with " \
  "corresponding id" do
    expect(@repo.find(1)).to eq @post1
  end


  it "#create is given post argument and adds to posts table" do
    post3 = Post.new("Winter 2022", "It's cold", 100, 1, 3)
    @repo.create(post3)
    expect(@repo.all).to eq [@post1, @post2, post3]
  end

  it "#delete is given integer argument and deletes record with" \
  "corresponding id from SQL database" do
    @repo.delete(1)
    expect(@repo.all).to eq [@post2]
  end

end

    