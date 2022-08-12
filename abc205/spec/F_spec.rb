RSpec.describe 'test' do
  it 'test with "2 3 3\n1 1 2 2\n1 2 2 3\n1 1 1 3\n"' do
    io = IO.popen("ruby abc205/F.rb", "w+")
    io.puts("2 3 3\n1 1 2 2\n1 2 2 3\n1 1 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 5 3\n1 1 5 5\n1 1 4 4\n2 2 3 3\n"' do
    io = IO.popen("ruby abc205/F.rb", "w+")
    io.puts("5 5 3\n1 1 5 5\n1 1 4 4\n2 2 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
