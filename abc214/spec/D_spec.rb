RSpec.describe 'test' do
  it 'test with "3\n1 2 10\n2 3 20\n"' do
    io = IO.popen("ruby abc214/D.rb", "w+")
    io.puts("3\n1 2 10\n2 3 20\n")
    io.close_write
    expect(io.readlines.join).to eq("50\n")
  end

  it 'test with "5\n1 2 1\n2 3 2\n4 2 5\n3 5 14\n"' do
    io = IO.popen("ruby abc214/D.rb", "w+")
    io.puts("5\n1 2 1\n2 3 2\n4 2 5\n3 5 14\n")
    io.close_write
    expect(io.readlines.join).to eq("76\n")
  end

end
