RSpec.describe 'test' do
  it 'test with "5 3 2\n1 3\n"' do
    io = IO.popen("ruby abc225/H.rb", "w+")
    io.puts("5 3 2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "6 6 1\n4\n"' do
    io = IO.popen("ruby abc225/H.rb", "w+")
    io.puts("6 6 1\n4\n")
    io.close_write
    expect(io.readlines.join).to eq("120\n")
  end

  it 'test with "99 10 3\n10 50 90\n"' do
    io = IO.popen("ruby abc225/H.rb", "w+")
    io.puts("99 10 3\n10 50 90\n")
    io.close_write
    expect(io.readlines.join).to eq("761621047\n")
  end

end
