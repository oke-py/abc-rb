RSpec.describe 'test' do
  it 'test with "5\n1 2 1 1 3\n"' do
    io = IO.popen("ruby abc136/C.rb", "w+")
    io.puts("5\n1 2 1 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4\n1 3 2 1\n"' do
    io = IO.popen("ruby abc136/C.rb", "w+")
    io.puts("4\n1 3 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "5\n1 2 3 4 5\n"' do
    io = IO.popen("ruby abc136/C.rb", "w+")
    io.puts("5\n1 2 3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "1\n1000000000\n"' do
    io = IO.popen("ruby abc136/C.rb", "w+")
    io.puts("1\n1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
