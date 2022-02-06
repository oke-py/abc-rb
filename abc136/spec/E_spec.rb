RSpec.describe 'test' do
  it 'test with "2 3\n8 20\n"' do
    io = IO.popen("ruby abc136/E.rb", "w+")
    io.puts("2 3\n8 20\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "2 10\n3 5\n"' do
    io = IO.popen("ruby abc136/E.rb", "w+")
    io.puts("2 10\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "4 5\n10 1 2 22\n"' do
    io = IO.popen("ruby abc136/E.rb", "w+")
    io.puts("4 5\n10 1 2 22\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "8 7\n1 7 5 6 8 2 6 5\n"' do
    io = IO.popen("ruby abc136/E.rb", "w+")
    io.puts("8 7\n1 7 5 6 8 2 6 5\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
