RSpec.describe 'test' do
  it 'test with "5 3\n1 2 1 10\n1 3 2 20\n2 4 4 30\n5 2 1 40\n1 100 1 4\n1 100 1 5\n3 1000 3 4\n"' do
    io = IO.popen("ruby abc133/F.rb", "w+")
    io.puts("5 3\n1 2 1 10\n1 3 2 20\n2 4 4 30\n5 2 1 40\n1 100 1 4\n1 100 1 5\n3 1000 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("130\n200\n60\n")
  end

end
