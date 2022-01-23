RSpec.describe 'test' do
  it 'test with "2\n4 5 3\n"' do
    io = IO.popen("ruby abc236/F.rb", "w+")
    io.puts("2\n4 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "4\n9 7 9 7 10 4 3 9 4 8 10 5 6 3 8\n"' do
    io = IO.popen("ruby abc236/F.rb", "w+")
    io.puts("4\n9 7 9 7 10 4 3 9 4 8 10 5 6 3 8\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

end
