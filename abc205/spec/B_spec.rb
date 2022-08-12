RSpec.describe 'test' do
  it 'test with "5\n3 1 2 4 5\n"' do
    io = IO.popen("ruby abc205/B.rb", "w+")
    io.puts("5\n3 1 2 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "6\n3 1 4 1 5 2\n"' do
    io = IO.popen("ruby abc205/B.rb", "w+")
    io.puts("6\n3 1 4 1 5 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "3\n1 2 3\n"' do
    io = IO.popen("ruby abc205/B.rb", "w+")
    io.puts("3\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "1\n1\n"' do
    io = IO.popen("ruby abc205/B.rb", "w+")
    io.puts("1\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
