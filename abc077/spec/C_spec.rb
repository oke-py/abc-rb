RSpec.describe 'test' do
  it 'test with "2\n1 5\n2 4\n3 6\n"' do
    io = IO.popen("ruby abc077/C.rb", "w+")
    io.puts("2\n1 5\n2 4\n3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n1 1 1\n2 2 2\n3 3 3\n"' do
    io = IO.popen("ruby abc077/C.rb", "w+")
    io.puts("3\n1 1 1\n2 2 2\n3 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("27\n")
  end

  it 'test with "6\n3 14 159 2 6 53\n58 9 79 323 84 6\n2643 383 2 79 50 288\n"' do
    io = IO.popen("ruby abc077/C.rb", "w+")
    io.puts("6\n3 14 159 2 6 53\n58 9 79 323 84 6\n2643 383 2 79 50 288\n")
    io.close_write
    expect(io.readlines.join).to eq("87\n")
  end
end
