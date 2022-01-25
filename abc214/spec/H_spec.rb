RSpec.describe 'test' do
  it 'test with "5 5 2\n1 2\n2 3\n3 2\n1 4\n1 5\n1 4 5 2 8\n"' do
    io = IO.popen("ruby abc214/H.rb", "w+")
    io.puts("5 5 2\n1 2\n2 3\n3 2\n1 4\n1 5\n1 4 5 2 8\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

  it 'test with "3 1 10\n2 3\n1 100 100\n"' do
    io = IO.popen("ruby abc214/H.rb", "w+")
    io.puts("3 1 10\n2 3\n1 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
